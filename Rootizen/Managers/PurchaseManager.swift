//
//  PurchaseManager.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/3/26.
//

import StoreKit

@Observable
final class PurchaseManager {

    // The single source of truth for "does the user own the lifetime unlock."
    // AppState mirrors this — it never sets it directly.
    private(set) var isPremiumUnlocked: Bool = false

    // Loaded product info (price, display name) fetched from the App Store.
    private(set) var lifetimeProduct: Product?

    // Surfaces purchase-flow problems to the UI without crashing anything.
    private(set) var purchaseError: String?

    private let premiumProductID = "com.rootizen.premium.lifetime"

    // Long-running task that listens for transactions arriving outside
    // the direct purchase() call — restores, Ask to Buy approvals,
    // refunds, purchases completed after an interruption, etc.
    private var transactionListenerTask: Task<Void, Never>?

    init() {
        // Start listening immediately so nothing is missed while the
        // product/entitlement check below is still in flight.
        transactionListenerTask = listenForTransactions()

        Task {
            await fetchProduct()
            await refreshEntitlements()
        }
    }

    deinit {
        transactionListenerTask?.cancel()
    }

    // MARK: - Fetch product info from the App Store

    @MainActor
    func fetchProduct() async {
        do {
            let products = try await Product.products(for: [premiumProductID])
            lifetimeProduct = products.first
        } catch {
            purchaseError = "Couldn't load product info. Check your connection."
        }
    }

    // MARK: - Check what the user already owns (this IS "Restore Purchases")

    @MainActor
    func refreshEntitlements() async {
        for await result in Transaction.currentEntitlements {
            guard case .verified(let transaction) = result else { continue }

            if transaction.productID == premiumProductID {
                isPremiumUnlocked = true
                return
            }
        }
        // No matching verified entitlement found.
        isPremiumUnlocked = false
    }

    // Exposed for a "Restore Purchases" button in Settings — same call,
    // just triggered manually so the user gets a moment of confirmation.
    func restorePurchases() async {
        await refreshEntitlements()
    }

    // MARK: - Purchase flow

    @MainActor
    func purchase() async {
        purchaseError = nil

        guard let product = lifetimeProduct else {
            purchaseError = "Product not available yet. Try again in a moment."
            return
        }

        do {
            let result = try await product.purchase()

            switch result {
            case .success(let verification):
                let transaction = try checkVerified(verification)
                isPremiumUnlocked = true
                await transaction.finish()

            case .userCancelled:
                // Not an error — user backed out. No message needed.
                break

            case .pending:
                purchaseError = "Purchase pending approval."

            @unknown default:
                break
            }
        } catch {
            purchaseError = "Purchase failed. Please try again."
        }
    }

    // MARK: - Continuous transaction listener

    private func listenForTransactions() -> Task<Void, Never> {
        Task.detached { [weak self] in
            for await result in Transaction.updates {
                guard let self else { continue }
                guard case .verified(let transaction) = result else { continue }

                if transaction.productID == self.premiumProductID {
                    await MainActor.run {
                        self.isPremiumUnlocked = true
                    }
                }
                await transaction.finish()
            }
        }
    }

    // MARK: - Verification helper

    private func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            throw StoreError.failedVerification
        case .verified(let safe):
            return safe
        }
    }

    enum StoreError: Error {
        case failedVerification
    }
}
