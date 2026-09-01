//
//  GameCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

enum CardType: String, Identifiable{
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
    let action:() -> Void
    
    var cardBackgroundBe: Color {
        
        switch cardType {
            
        case .quiz:
            AppColor.infoMuted
        case .flashcard:
            AppColor.highlightMuted
        case .senior:
            AppColor.successMuted
        case .top15:
            AppColor.accentMuted
        case .n400:
            AppColor.errorMuted
        case .allCivics:
            AppColor.accentMuted

        }
        
    }
    
    var cardForegroundBe: Color {
        
        switch cardType {
            
        case .quiz:
            AppColor.info
        case .flashcard:
            AppColor.highlight
        case .senior:
            AppColor.success
        case .top15:
            AppColor.accent
        case .n400:
            AppColor.error
        case .allCivics:
            Color.black
        }
        
    }
    
    var body: some View {
        
        Button{
            action()
        }label: {
            HStack(spacing: 0) {
                
                HStack {
                    image
                        .foregroundStyle(cardForegroundBe)
                        .font(.system(size: 40))
                }
                .padding()
                
                // Information area
                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .foregroundStyle(cardForegroundBe)
                        .primaryTitle()
                    
                    Text("\(secondTitle)")
                        .foregroundStyle(cardForegroundBe)
                        .secondaryTitle()
                        .textCase(.uppercase)
                    
                    Text("\(thirdTitle)")
                        .foregroundStyle(cardForegroundBe)
                        .thirdTitle()
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(cardBackgroundBe)
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .stroke(Color.black.opacity(0.08), lineWidth: 1)
            }
            .shadow(
                color: cardForegroundBe,
                radius: 0,
                x: 0,
                y: 5
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    GameCard(
        title: "Quiz",
        secondTitle: "10 questions",
        thirdTitle: "Multiple selection",
        image: Image(systemName: "book"),
        cardType: .allCivics,
        action: {}
    )
    .padding()
}
