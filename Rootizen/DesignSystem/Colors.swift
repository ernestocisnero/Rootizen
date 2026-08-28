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

    // MARK: - Text
    static let primaryText = Color(.black)
    static let secondaryText = Color(.white)
    static let thirdText = Color(.secondaryLabel)

    // MARK: - Semantic
    static let success = Color(red: 0.39, green: 0.60, blue: 0.13)   // #639922 green
    static let successMuted = Color(red: 0.92, green: 0.95, blue: 0.87) // #EAF3DE

    static let error = Color(red: 0.85, green: 0.35, blue: 0.19)     // #D85A30 coral
    static let errorMuted = Color(red: 0.98, green: 0.92, blue: 0.91) // #FAECE7

    static let accent = Color(red: 0.94, green: 0.62, blue: 0.15)    // #EF9F27 amber
    static let accentMuted = Color(red: 0.98, green: 0.93, blue: 0.85) // #FAEEDA

    // MARK: - Extra category colors (used for cards, tags, achievements)
    static let info = Color(red: 0.09, green: 0.37, blue: 0.65)      // #185FA5 blue
    static let infoMuted = Color(red: 0.90, green: 0.95, blue: 0.98) // #E6F1FB

    static let highlight = Color(red: 0.60, green: 0.21, blue: 0.34) // #993556 pink
    static let highlightMuted = Color(red: 0.98, green: 0.92, blue: 0.94) // #FBEAF0
    
    // MARK: - Borders
    static let successBorder = Color(red: 0.23, green: 0.43, blue: 0.07) // #3B6D11
    static let errorBorder = Color(red: 0.60, green: 0.24, blue: 0.12)   // #993C1D (coral border)
    static let accentBorder = Color(red: 0.39, green: 0.31, blue: 0.02)  // #633806 (amber border)

    // MARK: - Streak / gamification
    static let streak = error        // coral flame color reused
    static let xp = accent           // amber gem color reused
    static let league = accent

}
