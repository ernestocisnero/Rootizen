//
//  PaywallView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/23/26.
//

import SwiftUI

struct PaywallView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(PurchaseManager.self) private var purchaseManager
    
    @State private var isPurchasing = false
    @State private var showErrorAlert = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            ScrollView {
                VStack(spacing: 4) {
                    Text("Rootizen Plus")
                        .font(.largeTitle.weight(.bold))
                    
                    Text("Everything you need to pass with confidence")
                        .bodyText(AppColor.secondaryText)
                    
                    Text("One time payment. Access for life.")
                        .bodyText(AppColor.secondaryText)
                }
                .padding(.top, 24)
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Plus - $4.99")
                            .font(.title2.weight(.bold))
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 18) {
                        benefitRow(icon: "list.bullet.below.rectangle", text: "Unlimited Quiz & Flashcard")
                        benefitRow(icon: "headphones", text: "Listening & speaking practice modes")
                        benefitRow(icon: "chart.bar", text: "Unlock accuracy breakdown by category")
                    }
                    
                    Spacer()
                    
                    Button {
                        guard !isPurchasing else { return }
                        
                        Task {
                            isPurchasing = true
                            await purchaseManager.purchase()
                            isPurchasing = false
                            
                            if purchaseManager.purchaseError != nil {
                                showErrorAlert = true
                            }else{
                                dismiss()
                            }
                            
                            
                        }
                        
                    } label: {

                        VStack{
                            if isPurchasing{
                                ProgressView()
                                    .tint(AppColor.secondaryText)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 6)
                            }else{
                                Text("Get Plus")
                                    .bodyText()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(AppColor.leagueColor(for: .gold).muted(0.5))
                }
                .padding(20)
                .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                .padding(.horizontal)
                .padding(.top, 24)
            }
        }
        .alert(
            "Upsss purchase failed",
            isPresented: $showErrorAlert
        ) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(purchaseManager.purchaseError ?? "Something went wrong. Please try again.")
        }
        .padding(.top)
    }
    
    private func benefitRow(icon: String, text: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(AppColor.leagueColor(for: .gold))
                .frame(width: 24)
            
            Text(text)
                .font(.body)
                .foregroundStyle(.primary)
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    PaywallView()
        .environment(PurchaseManager())
}
