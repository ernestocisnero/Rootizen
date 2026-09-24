//
//  CardFaceLayout.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/8/26.
//

import SwiftUI

struct CardFaceFront: View {
    let question: LocalizedText
    let category: QuestionCategory

    private var iconName: String {
        switch category {
        case .principlesOfGovernment:
            return "building.columns"
        case .principlesofAmericanDemocracy:
            return "person.2"
        case .colonialPeriod:
            return "scroll"
        case .history1800s:
            return "clock"
        case .rightsAndResponsibilities:
            return "checklist"
        case .systemOfGovernment:
            return "building.columns.circle"
        case .holidays:
            return "calendar"
        case .symbols:
            return "flag"
        case .recentHistory:
            return "clock.arrow.circlepath"
        case .geography:
            return "globe.americas"
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label(category.rawValue, systemImage: iconName)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)

                Spacer()

                Image(systemName: "questionmark.circle.fill")
                    .foregroundStyle(.tertiary)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(question.english)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.primary)

                Divider()

                Text(question.spanish)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer(minLength: 0)

            HStack {
                Spacer()
                Label("Tap to reveal", systemImage: "hand.tap")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(minHeight: 200, alignment: .topLeading)
        .frame(maxWidth: .infinity)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(AppColor.border, lineWidth: 0.5)
        )
        .shadow(color: .black.opacity(0.05), radius: 8, y: 3)
    }
}

#Preview {
    CardFaceFront(
        question: LocalizedText(english: "The question", spanish: "La pregunta"),
        category: .principlesofAmericanDemocracy
    )
    .padding()
}
