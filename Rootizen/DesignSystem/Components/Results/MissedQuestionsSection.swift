//
//  MissedQuestionsSection.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//

import SwiftUI

struct MissedQuestionsSection: View {
    let items: [MissedQuestionItem]
 
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Review Missed Questions")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
                .padding(.horizontal, 4)
 
            VStack(spacing: 0) {
                if items.isEmpty {
                    HStack(spacing: 10) {
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundStyle(AppColor.success)
                        Text("No missed questions. Perfect score!")
                            .bodyText()
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                } else {
                    ForEach(items) { item in
                        MissedQuestionRow(item: item)
 
                        if item.id != items.last?.id {
                            Divider().padding(.leading, 16)
                        }
                    }
                }
            }
            .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
    }
}
 
private struct MissedQuestionRow: View {
    let item: MissedQuestionItem
 
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(item.category.rawValue)
                .font(.footnote)
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
 
            VStack(alignment: .leading, spacing: 4) {
                Text(item.question.english)
                    .primaryTitle()
                Text(item.question.spanish)
                    .secondaryTitle()
            }
 
            VStack(alignment: .leading, spacing: 8) {
                answerLine(
                    icon: "xmark.circle.fill",
                    tint: AppColor.error,
                    label: "Your answer",
                    text: item.yourAnswer.english
                )
                answerLine(
                    icon: "checkmark.circle.fill",
                    tint: AppColor.success,
                    label: "Correct answer",
                    text: item.correctAnswer.english
                )
            }
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityElement(children: .combine)
    }
 
    private func answerLine(icon: String, tint: Color, label: String, text: String) -> some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: icon)
                .foregroundStyle(tint)
 
            VStack(alignment: .leading, spacing: 1) {
                Text(label)
                    .secondaryTitle()
                Text(text)
                    .bodyText()
            }
        }
    }
}

#Preview {
    ScrollView {
        VStack(spacing: 24) {
            MissedQuestionsSection(items: [
                MissedQuestionItem(
                    category: .holidays,
                    question: LocalizedText(english: "What is Veterans Day?", spanish: "¿Qué es el Día de los Veteranos?"),
                    yourAnswer: LocalizedText(english: "A day for soldiers who died", spanish: "Un día para los soldados que murieron"),
                    correctAnswer: LocalizedText(english: "A holiday to honor people who have served in the U.S. military", spanish: "Un día festivo para honrar a las personas que han servido en las fuerzas militares de los Estados Unidos")
                )
            ])

            MissedQuestionsSection(items: [])
        }
        .padding()
    }
    .background(Color(.systemGroupedBackground))
    
    
}
