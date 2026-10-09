//
//  ByPracticeMode.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/5/26.
//

import SwiftUI

struct ByPracticeMode: View {
    let title: String
    let total: Int
    let correct: Int

    // Guards against dividing by zero when nothing has been answered yet.
    private var accuracy: Double {
        total > 0 ? Double(correct) / Double(total) : 0
    }

    // Same thresholds as CategoryAccuracyRow, so both rows color alike.
    private var tint: Color {
        if accuracy >= 0.8 { return AppColor.success }
        if accuracy >= 0.6 { return Color(.systemOrange) }
        return AppColor.error
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(title)
                    .bodyText()

                Spacer()

                Text("\(total) Answered")
                    .secondaryTitle()
            }

            ProgressView(value: accuracy)
                .tint(tint)

            Text("\(accuracy.formatted(.percent.precision(.fractionLength(0)))) accuracy")
                .secondaryTitle()
        }
        .padding(16)
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    VStack(spacing: 0) {
        ByPracticeMode(title: "Quiz", total: 128, correct: 105)
        Divider().padding(.leading, 16)
        ByPracticeMode(title: "Flashcards", total: 96, correct: 56)
        Divider().padding(.leading, 16)
        ByPracticeMode(title: "Geography", total: 0, correct: 0)
    }
    .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    .padding()
    .background(Color(.systemGroupedBackground))
}
