//
//  ProfileRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/27/26.
//

import SwiftUI

struct ProfileRow: View {
    let icon: String
    let title: String
    var tint: Color = AppColor.primaryText
    var showChevron: Bool = true
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            HStack(spacing: 12) {
                Image(systemName: icon)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(AppColor.thirdText)
                    .frame(width: 22)

                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(tint)

                Spacer()

                if showChevron {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(AppColor.thirdText.opacity(0.5))
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
            .background(AppColor.background)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(Color.black.opacity(0.08), lineWidth: 1)
            }
            .shadow(
                color: AppColor.secondaryBackground,
                radius: 0,
                x: 0,
                y: 5
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: 15) {
        ProfileRow(icon: "gearshape", title: "Settings") {}
    }
    .padding()
}
