//
//  OnboardingWelcome.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI


struct OnboardingPresentationView: View {
    
    @State private var isWaving: Bool = false
    @State private var selectedLanguage: AppLanguage? = nil
    
    let onSelect: (AppLanguage)-> Void
    
    var body: some View {
        
        VStack(spacing: 24){
            
            RootyTalk(rootyImageName: "Rooty", rootyWidth: 200, rootyTalkPhrases: Phrase.init(rootyTalksCases: .presentation).phrase)
            
            VStack(spacing: 0) {
                Text("Welcome to Rootizen")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundStyle(AppColor.primaryText)
                    .multilineTextAlignment(.center)
                
                Text("Your friendly guide to the US citizenship test.")
                    .font(.system(size: 16))
                    .foregroundStyle(AppColor.secondaryText)
                    .multilineTextAlignment(.center)
            }
            
            VStack(spacing: 12) {
                Text("Choose a language")
                    .label()
                LanguageButton(
                    title: "English",
                    flag: "🇺🇸",
                    isSelected: selectedLanguage == .english
                ) {
                    selectedLanguage = .english
                    onSelect(.english)
                }
                
                LanguageButton(
                    title: "Español",
                    flag: "🇪🇸",
                    isSelected: selectedLanguage == .spanish
                ) {
                    selectedLanguage = .spanish
                    onSelect(.spanish)
                }
            }
        }
    }
    
}

#Preview {
    OnboardingPresentationView(onSelect: { _ in })
        .padding(.horizontal, 16)
}
