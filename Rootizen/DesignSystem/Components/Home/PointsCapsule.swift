//
//  ExpPointsCapsule.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

enum CapsuleType {
    case streak
    case xpPoints
}

struct PointsCapsule: View {

    let capsuleType: CapsuleType
    let points: Int
    let textPoints: String

    private var accentColor: Color {
        capsuleType == .streak ? AppColor.streak : AppColor.accent
    }

    private var iconName: String {
        capsuleType == .streak ? "flame" : "bolt"
    }

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: iconName)
                .foregroundStyle(accentColor)
                .font(.system(size: 15, weight: .medium))

            Text("\(points)")
                .foregroundStyle(AppColor.primaryText)
                .primaryTitle()

            Text(textPoints)
                .foregroundStyle(AppColor.secondaryText)
                .secondaryTitle()
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background(AppColor.surface)
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(AppColor.border, lineWidth: 1)
        }
    }
}

#Preview {
    HStack(spacing: 8) {
        PointsCapsule(capsuleType: .streak, points: 4, textPoints: "day streak")
        PointsCapsule(capsuleType: .xpPoints, points: 100, textPoints: "XP")
    }
    .padding()
}
