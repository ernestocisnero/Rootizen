//
//  OnboardingTestYear.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI

struct OnboardingTestYearView: View {
    
    let onSelect: (QuestionVersion)-> Void
    @State private var selectedVersion: QuestionVersion = .v2025
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                // MARK: Header
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Choose your test")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Which citizenship test are you preparing for?")
                        .font(.body)
                        .foregroundStyle(AppColor.secondaryText)
                }
                
                // MARK: Test Versions
                
                VStack(spacing: 12) {
                    TestVersionCard(
                        title: "2025 Test",
                        subtitle: "The current civics test",
                        detail: "128 questions",
                        isRecommended: true,
                        isSelected: selectedVersion == .v2025
                    ) {
                        selectedVersion = .v2025
                        onSelect(.v2025)
                    }
                    
                    TestVersionCard(
                        title: "2008 Test",
                        subtitle: "Previous version of the test",
                        detail: "100 questions",
                        isRecommended: false,
                        isSelected: selectedVersion == .v2008
                    ) {
                        selectedVersion = .v2008
                        onSelect(.v2008)
                    }
                }
                
                // MARK: Change Later
                
                HStack(spacing: 8) {
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .foregroundStyle(AppColor.secondaryText)
                    
                    Text("You can change your test version later in your preferences.")
                        .font(.footnote)
                        .foregroundStyle(AppColor.secondaryText)
                }
                
                // MARK: Information
                
                TestVersionInfoSection()
            }
            
            RootyTalk(rootyImageName: "Rooty", rootyWidth: 120, rootyTalkPhrases: Phrase.init(rootyTalksCases: .testVersionSelection).phrase)
                .padding()
        }
        .background(AppColor.background)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    OnboardingTestYearView(
        onSelect: { _ in }
    )
}
