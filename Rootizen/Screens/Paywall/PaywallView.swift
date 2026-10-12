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
    @State private var isRestoring = false
    @State private var showConfirmation = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Image("RootizenLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 159)
                .padding()
                
            
            
            VStack(spacing: 4) {
                Text("Get Rootizen Plus")
                    .headline()
                
                Text("Everything you need to pass with confidence")
                    .bodyText(AppColor.secondaryText)
                
                Text("One time payment. Access for life.")
                    .bodyText(AppColor.secondaryText)
            }
            .padding(.top, 15)
            .frame(maxWidth: .infinity)
            
            VStack{
                VStack(alignment: .leading, spacing: 18) {
                    benefitRow(icon: "list.bullet.below.rectangle", text: "Unlimited Quiz & Flashcard")
                    benefitRow(icon: "headphones", text: "Listening & speaking practice modes")
                    benefitRow(icon: "chart.bar", text: "Unlock accuracy breakdown by category")
                }
            }
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(AppColor.border, lineWidth: 0.5)
            )
            .shadow(color: .black.opacity(0.05), radius: 8, y: 3)
            
            
            Spacer()
            
            VStack{
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
                            Text("Upgrade to Plus $4.99")
                                .headline(AppColor.secondaryBackground)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(AppColor.success)
                
                HStack(spacing: 20){
                    Button{
                        Task {
                            isRestoring = true
                            await purchaseManager.restorePurchases()
                            isRestoring = false
                            showConfirmation = true
                        }
                    }label:{
                        Text("Restore Purchase").secondaryTitle()
                    }
                    .disabled(isRestoring)
                    .alert(
                        purchaseManager.isPremiumUnlocked ? "Rootizen Plus restored" : "No Rootizen Plus to restore",
                        isPresented: $showConfirmation
                    ) {
                        Button("OK", role: .cancel) { }
                    } message: {
                        Text(
                            purchaseManager.isPremiumUnlocked
                            ? "Great! Your Rootizen Plus has been restored."
                            : "No previous purchase for Rootizen Plus was found for this Apple ID. Upgrade to get full access."
                        )
                    }
                    
                    Button{
                    }label:{
                        Link(destination: URL(string: "https://ernestocisnero.vercel.app")!) {
                            Text("Terms of Use").secondaryTitle()
                        }
                    }
                    
                    Button{
                    }label:{
                        Link(destination: URL(string: "https://ernestocisnero.vercel.app")!) {
                            Text("Privacy Policy").secondaryTitle()
                        }
                    }
                    
                }
                .padding(.top, 6)
            }
            
        }
        .padding()
        .alert(
            "Upsss purchase failed",
            isPresented: $showErrorAlert
        ) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(purchaseManager.purchaseError ?? "Something went wrong. Please try again.")
        }
        
    }
    
    private func benefitRow(icon: String, text: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(AppColor.success)
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
