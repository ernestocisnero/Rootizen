//
//  LanguageButton.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/12/26.
//

import SwiftUI

struct LanguageButton: View {
    @State private var triggerFeedback: Bool = false
    let title: String
    let flag: String
    let isSelected: Bool
    let isDefault: Bool
    let action: () -> Void

    var body: some View {
        Button{
            action()
            triggerFeedback.toggle()
        }label: {
            HStack(spacing: 14) {
                Text(flag)
                    .headline()

                Text(title)
                    .primaryTitle(AppColor.primaryText)

            }
            .padding(.horizontal)
            .frame(height: 50)
            .background(AppColor.secondaryBackground.muted())
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(isSelected
                            ? AppColor.success
                            : AppColor.surface
                                , lineWidth: 1)
            )
            
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: triggerFeedback)
    }
}

#Preview {
    HStack{
        LanguageButton(title: "English", flag: "🇺🇸", isSelected: true, isDefault: true){}
        LanguageButton(title: "Spanish", flag: "🇺🇸", isSelected: false, isDefault: true){}
    }
    
}
