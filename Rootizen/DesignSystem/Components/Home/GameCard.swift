//
//  GameCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

enum CardType: String, Identifiable {
    case quiz
    case flashcard
    case senior
    case top15
    case n400
    case allCivics

    var id: String { rawValue }
}

struct GameCard: View {

    let title: String
    let secondTitle: String
    let thirdTitle: String
    let image: Image
    let cardType: CardType
    let action: () -> Void

    private var accentColor: Color {
        switch cardType {
        case .quiz:
            AppColor.info
        case .flashcard:
            AppColor.highlight
        case .senior:
            AppColor.success
        case .top15:
            AppColor.neutral
        case .n400:
            AppColor.error
        case .allCivics:
            AppColor.accent
        }
    }

    var body: some View {

        Button {
            action()
        } label: {
            HStack(spacing: 0) {

                // Left accent bar — replaces the colored full-card fill
                Rectangle()
                    .fill(accentColor)
                    .frame(width: 5)

                HStack(alignment: .top, spacing: 12) {
                    image
                        .foregroundStyle(accentColor)
                        .font(.system(size: 22, weight: .medium))
                        .frame(width: 24, alignment: .center)
                        .padding(.top, 2)

                    // Information area
                    VStack(alignment: .leading, spacing: 3) {
                        Text(title)
                            .foregroundStyle(AppColor.primaryText)
                            .primaryTitle()

                        HStack(spacing: 4) {
                            Text(secondTitle)
                            Text("·")
                            Text(thirdTitle)
                        }
                        .foregroundStyle(AppColor.secondaryText)
                        .secondaryTitle()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(14)
            }
            .background(AppColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(AppColor.border, lineWidth: 1)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: 10) {
        GameCard(
            title: "Quiz",
            secondTitle: "10 questions",
            thirdTitle: "Multiple selection",
            image: Image(systemName: "book"),
            cardType: .quiz,
            action: {}
        )
        GameCard(
            title: "All civics questions",
            secondTitle: "125 questions",
            thirdTitle: "Read and memorize",
            image: Image(systemName: "books.vertical"),
            cardType: .allCivics,
            action: {}
        )
    }
    .padding()
    .frame(maxHeight: 250)
}
