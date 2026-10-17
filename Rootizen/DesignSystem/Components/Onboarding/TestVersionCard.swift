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
                            .headline(AppColor.primaryText)
                        
                        if isRecommended {
                            HStack{
                                Text("Default")
                                    .padding(.horizontal)
                                    .padding(.vertical, 4)
                                    .secondaryTitle(AppColor.success)
                                    .background(AppColor.secondaryBackground, in: Capsule())
                            }
                        }
                    }
                    
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundStyle(AppColor.secondaryText)
                    
                    Text(detail)
                        .font(.caption)
                        .foregroundStyle(AppColor.tertiaryText)
                }
                
                Spacer()
                
                Image(systemName: isSelected
                      ? "checkmark.circle.fill"
                      : "circle")
                    .font(.title3)
                    .foregroundStyle(
                        isSelected
                        ? AppColor.success
                        : AppColor.secondaryText
                    )            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
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
        .sensoryFeedback(.selection, trigger: feedbackTrigger)
    }
}

#Preview {
    TestVersionCard(title: "Title", subtitle: "Subtitle", detail: "Details", isRecommended: true, isSelected: true, action: {})
}
