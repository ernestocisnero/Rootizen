//
//  Colors.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

enum AppColor {

    // MARK: - Backgrounds
    static let background = Color(.systemBackground)
    static let secondaryBackground = Color(.secondarySystemBackground)
    static let surface = Color(.secondarySystemGroupedBackground)

    // MARK: - Text
    static let primaryText = Color(.label)
    static let secondaryText = Color(.secondaryLabel)
    static let tertiaryText = Color(.tertiaryLabel)

    // MARK: - Hairline borders / dividers
    static let border = Color(.separator)

    // MARK: - Brand accent (custom — define light/dark variants in Assets.xcassets)
    static let accent = Color("AccentColor")

    // MARK: - Semantic feedback
    static let success = Color(.systemGreen)
    static let error = Color(.systemRed)
    static let info = Color(.systemBlue)

    // MARK: - Category / feature colors
    static let highlight = Color(.systemPink)
    static let journey = Color(.systemPurple)
    static let listen = Color(.systemTeal)
    static let speak = Color(.systemOrange)
    static let neutral = Color(.systemGray)

    // MARK: - Gamification
    static let streak = Color(.systemOrange)   // flame
    static let xp = Color(.systemYellow)       // coin/gold

    /// League tier color — computed per-tier, not a single constant.
    /// Placeholder LeagueTier below — replace with your real model once leagues are built.
    static func leagueColor(for tier: LeagueTier) -> Color {
        switch tier {
        case .bronze: return Color(.systemBrown)
        case .silver: return Color(.systemGray)
        case .gold: return Color(.systemYellow)
        case .diamond: return Color(.systemTeal)
        }
    }
}

// TODO: move to its own file once the leagues feature is built out.
enum LeagueTier {
    case bronze, silver, gold, diamond
}

extension Color {
    /// Tinted background fill derived from a semantic color — replaces hardcoded *Muted constants.
    /// Usage: AppColor.success.muted() instead of AppColor.successMuted
    func muted(_ opacity: Double = 0.15) -> Color {
        self.opacity(opacity)
    }
}
