//
//  UpgradeCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//

import SwiftUI

struct UpgradeCard: View {
    @State private var triggerFeedback: Bool = false
    
    let action: () -> Void

    var body: some View {
        Button{
            action()
            triggerFeedback.toggle()
        }label: {
            HStack(spacing: 14) {
                Image(systemName: "star.hexagon")
                    .headline(AppColor.leagueColor(for: .gold))

                VStack(alignment: .leading, spacing: 2) {
                    Text("See what you missed")
                        .primaryTitle(AppColor.leagueColor(for: .gold))

                    Text("Unlock accuracy by category and review every missed question with Rootizen Plus.")
                        .secondaryTitle()
                        .multilineTextAlignment(.leading)
                }

                Spacer(minLength: 0)

                Image(systemName: "chevron.right")
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(.tertiary)
            }
            .padding(14)
            .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(AppColor.border, lineWidth: 0.5)
            )
        }
        .sensoryFeedback(.impact, trigger: triggerFeedback)
        .buttonStyle(.plain)
        .accessibilityElement(children: .combine)
        .accessibilityHint("Opens the Plus upgrade screen")
    }
}

#Preview {
    UpgradeCard(action: {})
        //.padding()
        .background(AppColor.secondaryBackground)
}
