//
//  OnboardingWelcome.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI


struct OnboardingPresentationView: View {
    
    @State private var isWaving: Bool = false
    @State private var selectedLanguage: AppLanguage? = .english
    
    let onSelect: (AppLanguage)-> Void
    
    var body: some View {
        ScrollView{
            VStack(spacing: 24){
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Welcome to Rootizen")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundStyle(AppColor.primaryText)
                        .multilineTextAlignment(.center)
                    
                    Text("Your native app guide to the US citizenship test.")
                        .font(.system(size: 16))
                        .foregroundStyle(AppColor.secondaryText)
                        .multilineTextAlignment(.center)
                }
                
                Image("rootizenLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                
                VStack(spacing: 12) {
                    Text("Choose a language")
                        .label()
                    LanguageButton(
                        title: "English",
                        flag: "🇺🇸",
                        isSelected: selectedLanguage == .english,
                        isDefault: true
                    ) {
                        selectedLanguage = .english
                        onSelect(.english)
                    }
                    
                    LanguageButton(
                        title: "Español",
                        flag: "🇪🇸",
                        isSelected: selectedLanguage == .spanish,
                        isDefault: false
                    ) {
                        selectedLanguage = .spanish
                        onSelect(.spanish)
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    OnboardingPresentationView(onSelect: { _ in })
        .padding(.horizontal, 16)
}
