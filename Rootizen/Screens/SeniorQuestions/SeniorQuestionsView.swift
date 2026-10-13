//
//  SeniorQuestionsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/11/26.
//

import SwiftUI

struct SeniorQuestionsView: View {
    @Environment(\.dismiss) private var dismiss
    
    let questionsVersion: QuestionVersion
    
    var questions: [Question] {
        let all = questionsVersion == .v2025 ? q2025version : q2008version
            return all.filter{
                $0.isSenior == true
            }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    SeniorInfoBanner()
                    ForEach(questions) { question in
                        
                        SeniorCard(
                            question: question.question,
                            correctAnswer: question.answers.first(where: {$0.isCorrect})?.text ?? LocalizedText(english: "", spanish: ""),
                            category: question.category)
                    }
                }
                .padding()
            }
            .navigationTitle("Senior Questions")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    DismissBtn(
                        backgroundColor: AppColor.success,
                        shadowBorderColor: AppColor.secondaryBackground
                    ) {
                        dismiss()
                    }
                }
                .sharedBackgroundVisibility(.hidden)
            }
        }
    }
}

private struct SeniorInfoBanner: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "info.circle.fill")
                .font(.title3)
                .foregroundStyle(AppColor.info)

            VStack(alignment: .leading, spacing: 4) {
                Text("65/20 Special Consideration")
                    .primaryTitle()

                Text("If you are 65 years old or older and have been living in the United States as a lawful permanent resident of the United States for 20 or more years, USCIS will continue to administer a test with 10 questions from a specially selected bank of 20 test questions from either the 2008 or 2025 Naturalization Civics Test. ")
                    .secondaryTitle()
            }
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    SeniorQuestionsView(questionsVersion: .v2025)
}

#Preview{
    SeniorInfoBanner()
}
