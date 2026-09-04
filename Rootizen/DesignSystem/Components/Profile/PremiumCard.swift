//
//  PremiumCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/27/26.
//

import SwiftUI

struct PremiumCard: View {
    var title: String = "Get Pro"
    var subtitle: String = "Unlimited practice, no ads"
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 12) {
                Image(systemName: "crown.fill")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(AppColor.accentBorder)
                    .frame(width: 22)

                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(AppColor.accentBorder)

                    Text(subtitle)
                        .font(.system(size: 13, weight: .regular))
                        .foregroundStyle(AppColor.accent)
                }

                Spacer()

                
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 14)
            .background(AppColor.accentMuted)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    PremiumCard {
        print("open paywall sheet")
    }
    .padding()
}
