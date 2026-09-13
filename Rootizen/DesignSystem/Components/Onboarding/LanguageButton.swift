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
                        : AppColor.border
                    )
            }
            .padding(.horizontal, 18)
            .frame(height: 64)
            .background(
                isSelected
                ? AppColor.successMuted
                : AppColor.background
            )
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .overlay {
                RoundedRectangle(cornerRadius: 14)
                    .stroke(
                        isSelected
                        ? AppColor.success
                        : AppColor.border,
                        lineWidth: isSelected ? 1.5 : 1
                    )
            }
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: triggerFeedback)
    }
}

#Preview {
    LanguageButton(title: "Select a language", flag: "🇺🇸", isSelected: false){}
}
