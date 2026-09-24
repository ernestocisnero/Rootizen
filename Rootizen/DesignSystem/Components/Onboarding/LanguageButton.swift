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
    let action: () -> Void

    var body: some View {
        Button{
            action()
            triggerFeedback.toggle()
        }label: {
            HStack(spacing: 14) {
                Text(flag)
                    .font(.system(size: 28))

                Text(title)
                    .font(.headline)
                    .foregroundStyle(AppColor.primaryText)

                Spacer()

                Image(systemName: isSelected
                      ? "checkmark.circle.fill"
                      : "circle")
                    .font(.title3)
                    .foregroundStyle(
                        isSelected
                        ? AppColor.success
                        : AppColor.secondaryText
                    )
            }
            .padding(.horizontal, 18)
            .frame(height: 64)
            .background(
                isSelected
                ? AppColor.success.muted(0.2)
                : AppColor.secondaryBackground
            )
            .clipShape(RoundedRectangle(cornerRadius: 14))
            
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: triggerFeedback)
    }
}

#Preview {
    LanguageButton(title: "Select a language", flag: "🇺🇸", isSelected: false){}
}
