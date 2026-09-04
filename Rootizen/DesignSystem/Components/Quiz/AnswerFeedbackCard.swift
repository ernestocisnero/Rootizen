//
//  AnswerFeedbackCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

struct AnswerFeedbackCard: View {
    let isCorrect: Bool
    let correctAnswer: String

    private var tintColor: Color {
        isCorrect ? AppColor.success : AppColor.error
    }

    private var backgroundColor: Color {
        isCorrect ? AppColor.successMuted : AppColor.errorMuted
    }

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(tintColor)

            if isCorrect {
                Text("Correct!")
                    .primaryTitle(tintColor)
            } else {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Incorrect")
                        .primaryTitle(tintColor)

                    Text("Correct answer: \(correctAnswer)")
                        .bodyText(AppColor.secondaryText)
                }
            }

            Spacer()
        }
        .padding(.horizontal, 14)
        .padding(.vertical, isCorrect ? 12 : 14)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    VStack(spacing: 12) {
        AnswerFeedbackCard(isCorrect: true, correctAnswer: "Political liberty")
        AnswerFeedbackCard(isCorrect: false, correctAnswer: "Political liberty")
    }
    .padding()
}
