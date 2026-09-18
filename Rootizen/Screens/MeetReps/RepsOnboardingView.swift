//
//  RepsOnboardingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/17/26.
//

import SwiftUI

struct RepsOnboardingView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    @State private var zipCode = ""
    @State private var isValid = false
    
    var body: some View {
        
        VStack(spacing: 8){
            
            HStack{
                Spacer()
                DismissBtn(backgroundColor: AppColor.successMuted, shadowBorderColor: AppColor.success, action: { dismiss() })
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 20){
                
                Image(systemName: "person.3.fill")
                    .font(.system(size: 40, weight: .light))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 30)
                    .foregroundStyle(AppColor.success)
                    .background(AppColor.successMuted)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(AppColor.successMuted, lineWidth: 1)
                    }
                
                Text("Find your representatives")
                    .foregroundStyle(AppColor.success)
                    .headline()
                
                Text("The U.S. citizenship exam requires applicants to know the name of their U.S. representative. Enter your zip code to show yours.")
                    .secondaryTitle()
                    .multilineTextAlignment(.center)
            }
            
            // MARK: -- User input
            VStack(spacing: 14){
                TextField("Enter 5-digit Zip Code", text: $zipCode)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).fill(AppColor.secondaryBackground))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(AppColor.secondaryBackground, lineWidth: 0.2)
                    )
                    .keyboardType(.numberPad)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .onChange(of: zipCode) {_, newValue in
                        // Simple validation: check for exactly 5 digits
                        isValid = newValue.count == 5 && newValue.allSatisfy { $0.isNumber }
                    }
                
                PrimaryButton(title: "Continue", color: AppColor.success, foreground: AppColor.secondaryBackground, action: {
                    
                    appState.setZipCode(zipCode)
                    print(zipCode)
                    appState.completeRepsOnboarding()
                })
                .disabled(!isValid)
                
            }
            .padding(.vertical)
            
            
            Spacer()
            
            HStack(alignment: .center){
                
                Image(systemName: "lock")
                    .font(.system(size: 25, weight: .light))
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Your zip code is only used to look up public officials")

                    Text("Rootizen will never share or store personal data on a server")
                }
                .secondaryTitle()
                
                
            }
        }
    }
}

#Preview {
    RepsOnboardingView()
        .environment(AppState())
}
