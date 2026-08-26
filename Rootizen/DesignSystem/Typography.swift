//
//  Typography.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct PrimaryTitle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 21, weight: .bold))
            .foregroundStyle(AppColor.primaryText)
    }
}

struct SecondaryTitle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 15, weight: .semibold))
            .tracking(0.8)
            .foregroundStyle(AppColor.secondaryText)
    }
}

struct ThirdTitle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, weight: .semibold))
            .tracking(0.8)
            .foregroundStyle(AppColor.secondaryText)
    }
}


struct QuestionRow: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, weight: .semibold))
            .tracking(0.8)
            .foregroundStyle(AppColor.primaryText)
    }
}


extension View {
    func primaryTitle() -> some View { modifier(PrimaryTitle()) }
    func secondaryTitle() -> some View { modifier(SecondaryTitle()) }
    func thirdTitle() -> some View { modifier(ThirdTitle()) }
    func questionRow() -> some View { modifier(QuestionRow()) }
}
