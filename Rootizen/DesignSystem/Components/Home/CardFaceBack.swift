//
//  CardFaceBack.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/8/26.
//

import SwiftUI

struct CardFaceBack: View {
    let answers: LocalizedText
    let category: QuestionCategory

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text(category.rawValue)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)

                Spacer()

                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(AppColor.success)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(answers.english)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.primary)

                Divider()

                Text(answers.spanish)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer(minLength: 0)

            HStack {
                Spacer()
                Label("Correct answer", systemImage: "checkmark.seal")
                    .font(.caption2)
                    .foregroundStyle(AppColor.success)
            }
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(minHeight: 200, alignment: .topLeading)
        .frame(maxWidth: .infinity)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(AppColor.success.muted(0.35), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.05), radius: 8, y: 3)
    }
}

#Preview {
    CardFaceBack(
        answers: LocalizedText(english: "The answer", spanish: "La respuesta"),
        category: .history1800s
    )
    .padding()
}
