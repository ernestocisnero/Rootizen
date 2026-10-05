//
//  UpgradeCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//

import SwiftUI

struct UpgradeCard: View {
    var icon: String = "star.hexagon"
    var title: String = "See your weak spots"
    var subtitle: String = "Unlock accuracy by category and review every missed question with Plus."
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 14) {
                Image(systemName: icon)
                    .primaryTitle(AppColor.leagueColor(for: .gold))
                    .frame(width: 44, height: 44)
                    .background(
                        AppColor.leagueColor(for: .gold).muted(0.1),
                        in: RoundedRectangle(cornerRadius: 12, style: .continuous)
                    )

                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .primaryTitle()

                    Text(subtitle)
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
        .buttonStyle(.plain)
        .accessibilityElement(children: .combine)
        .accessibilityHint("Opens the Plus upgrade screen")
    }
}

#Preview {
    VStack(spacing: 16) {
        UpgradeCard(action: {})

        UpgradeCard(
            icon: "star.hexagon",
            title: "See your weak spots",
            subtitle: "Unlock lifetime accuracy by category with Plus.",
            action: {}
        )
    }
    .padding()
    .background(AppColor.secondaryBackground)
}
