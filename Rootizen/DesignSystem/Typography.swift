//
//  Typography.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

// MARK: - Headline
// Large text: quiz questions, screen headers.
struct Headline: ViewModifier {
    var color: Color = AppColor.primaryText

    func body(content: Content) -> some View {
        content
            .font(.system(.title3, design: .default, weight: .semibold))
            .foregroundStyle(color)
    }
}

// MARK: - Primary title
// Card titles, button labels, row titles.
struct PrimaryTitle: ViewModifier {
    var color: Color = AppColor.primaryText

    func body(content: Content) -> some View {
        content
            .font(.system(.headline, design: .default, weight: .semibold))
            .foregroundStyle(color)
    }
}

// MARK: - Body
// Real sentence-length content: quiz option text, row subtitles, descriptions.
// No letter-tracking — tracking that high reads fine on short labels, not on prose.
struct BodyText: ViewModifier {
    var color: Color = AppColor.primaryText

    func body(content: Content) -> some View {
        content
            .font(.system(.subheadline, design: .default, weight: .regular))
            .foregroundStyle(color)
    }
}

// MARK: - Secondary title
// Card subtitles / metadata line ("10 questions · Multiple choice").
struct SecondaryTitle: ViewModifier {
    var color: Color = AppColor.secondaryText

    func body(content: Content) -> some View {
        content
            .font(.system(.footnote, design: .default, weight: .regular))
            .foregroundStyle(color)
    }
}

// MARK: - Label
// Short uppercase eyebrows/tags only ("AMERICAN HISTORY", section headers).
// This is the one place tracking belongs — never apply to sentence-length text.
struct Label_: ViewModifier {
    var color: Color = AppColor.thirdText

    func body(content: Content) -> some View {
        content
            .font(.system(.caption, design: .default, weight: .semibold))
            .tracking(0.8)
            .textCase(.uppercase)
            .foregroundStyle(color)
    }
}

extension View {
    func headline(_ color: Color = AppColor.primaryText) -> some View {
        modifier(Headline(color: color))
    }
    func primaryTitle(_ color: Color = AppColor.primaryText) -> some View {
        modifier(PrimaryTitle(color: color))
    }
    func bodyText(_ color: Color = AppColor.primaryText) -> some View {
        modifier(BodyText(color: color))
    }
    func secondaryTitle(_ color: Color = AppColor.secondaryText) -> some View {
        modifier(SecondaryTitle(color: color))
    }
    func label(_ color: Color = AppColor.thirdText) -> some View {
        modifier(Label_(color: color))
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 12) {
        Text("What is one reason colonists came to America?").headline()
        Text("Quiz").primaryTitle()
        Text("Political liberty").bodyText()
        Text("10 questions · Multiple choice").secondaryTitle()
        Text("American history").label(AppColor.info)
    }
    .padding()
}
