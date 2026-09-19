//
//  ZipPicker.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct ZipPicker: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    @State private var zipCode: String = ""
    @State private var isValid = false
    
    var body: some View {
        
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
                print(zipCode)
                appState.setZipCode(zipCode)
                
                if !appState.repsFlowOnboardingComplete{
                    appState.completeRepsOnboarding()
                }
                
                dismiss()
                
            })
            .disabled(!isValid)
            
        }
        .padding()
    }
}

#Preview {
    ZipPicker()
        .environment(AppState())
}
