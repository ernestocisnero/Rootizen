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
                    Text("Choose your exam version")
                        .headline()
                    
                    Text("Choose the version that matches your citizenship application.")
                        .font(.body)
                        .foregroundStyle(AppColor.secondaryText)
                }
                
                // MARK: Test Versions
                
                VStack(spacing: 12) {
                    TestVersionCard(
                        title: "2025 Exam",
                        subtitle: "The current civics test",
                        detail: "128 questions",
                        isRecommended: true,
                        isSelected: selectedVersion == .v2025
                    ) {
                        selectedVersion = .v2025
                        onSelect(.v2025)
                    }
                    
                    TestVersionCard(
                        title: "2008 Exam",
                        subtitle: "Previous version of the test",
                        detail: "100 questions",
                        isRecommended: false,
                        isSelected: selectedVersion == .v2008
                    ) {
                        selectedVersion = .v2008
                        onSelect(.v2008)
                    }
                }
                
                Image("welcomeScreenImage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
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
