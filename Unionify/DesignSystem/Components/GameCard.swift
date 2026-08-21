//
//  GameCard.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct GameCard: View {
    
    let title: String
    let secondTitle: String
    let thirdTitle: String
    let image: Image
    let action:() -> Void
    
    var body: some View {
        
        Button{
            action()
        }label: {
            VStack(spacing: 0) {
                
                // Image area
                ZStack {
                    Color(.red).opacity(0.3)
                    
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 80)
                }
                .frame(height: 120)
                
                // Information area
                VStack(alignment: .leading, spacing: 8) {
                    Text(title)
                        .primaryTitle()
                    
                    Text("\(secondTitle)")
                        .secondaryTitle()
                        .textCase(.uppercase)
                    
                    Text("\(thirdTitle)")
                        .thirdTitle()
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .stroke(Color.black.opacity(0.08), lineWidth: 1)
            }
            .shadow(
                color: .black.opacity(0.10),
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
        image: Image(systemName: "book.closed.fill"),
        action: {}
    )
    .frame(width: 210)
    .padding()
}
