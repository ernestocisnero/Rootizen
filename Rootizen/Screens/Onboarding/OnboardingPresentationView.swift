//
//  OnboardingWelcome.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI


struct OnboardingPresentationView: View {
    @State private var selectedLanguage: AppLanguage? = .english
    
    let onSelect: (AppLanguage)-> Void
    
    var body: some View {
        ScrollView{
            VStack(spacing: 24){
                
                Image("welcomeScreenImage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Your journey to U.S. citizenship starts here")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundStyle(AppColor.primaryText)
                        .multilineTextAlignment(.leading)
                    
                    Text("Learn the civics questions, practice at your own pace, and prepare with confidence")
                        .secondaryTitle(AppColor.secondaryText)
                        .multilineTextAlignment(.leading)
                }
                
                HStack(spacing: 12) {
                    
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
