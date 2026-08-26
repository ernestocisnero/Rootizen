//
//  GameCard.swift
//  Rootizen
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
                
                HStack {
                    image
                        .foregroundStyle(title == "Quiz" ? AppColor.info : AppColor.highlight)
                        .primaryTitle()
                    
                    Spacer()
                }
                .padding()
                
                // Information area
                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .foregroundStyle(title == "Quiz" ? AppColor.info : AppColor.highlight)
                        .primaryTitle()
                    
                    Text("\(secondTitle)")
                        .foregroundStyle(title == "Quiz" ? AppColor.info : AppColor.highlight)
                        .secondaryTitle()
                        .textCase(.uppercase)
                    
                    Text("\(thirdTitle)")
                        .foregroundStyle(title == "Quiz" ? AppColor.info : AppColor.highlight)
                        .thirdTitle()
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(title == "Quiz" ? AppColor.infoMuted : AppColor.highlightMuted)
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .stroke(Color.black.opacity(0.08), lineWidth: 1)
            }
            .shadow(
                color: title == "Quiz" ? AppColor.info : AppColor.highlight,
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
        action: {}
    )
    .frame(width: 210)
    .padding()
}
