//
//  TestVersionCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/13/26.
//

import SwiftUI

struct TestVersionCard: View {
    @State private var feedbackTrigger: Bool = false
    
    let title: String
    let subtitle: String
    let detail: String
    let isRecommended: Bool
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button{
            action()
            feedbackTrigger.toggle()
        }label:{
            HStack(spacing: 16) {

                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 8) {
                        Text(title)
                            .font(.headline)
                            .foregroundStyle(AppColor.primaryText)

                        if isRecommended {
                            Text("RECOMMENDED")
                                .font(.caption2)
                                .fontWeight(.bold)
                                .foregroundStyle(AppColor.accent)
                        }
                    }

                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundStyle(AppColor.secondaryText)

                    Text(detail)
                        .font(.caption)
                        .foregroundStyle(AppColor.secondaryText)
                }

                Spacer()

                Image(systemName: isSelected
                      ? "checkmark.circle.fill"
                      : "circle")
                    .font(.title2)
                    .foregroundStyle(
                        isSelected
                        ? AppColor.accent
                        : AppColor.secondaryText
                    )
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(AppColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .overlay {
                RoundedRectangle(cornerRadius: 18)
                    .stroke(
                        isSelected
                        ? AppColor.accent
                        : AppColor.border,
                        lineWidth: isSelected ? 2 : 1
                    )
            }
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: feedbackTrigger)
    }
}

#Preview {
    TestVersionCard(title: "Title", subtitle: "Subtitle", detail: "Details", isRecommended: true, isSelected: true, action: {})
}
