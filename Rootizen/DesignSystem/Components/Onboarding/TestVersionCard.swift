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
                            HStack{
                                Text("RECOMMENDED")
                                    .padding(.horizontal)
                                    .padding(.vertical, 4)
                                    .font(.caption2)
                                    .fontWeight(.bold)
                                    .foregroundStyle(AppColor.success)
                                    .background(AppColor.success.muted(0.2), in: Capsule())
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
            .background(
                isSelected
                ? AppColor.success.muted(0.2)
                : AppColor.secondaryBackground
            )
            .clipShape(RoundedRectangle(cornerRadius: 18))
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: feedbackTrigger)
    }
}

#Preview {
    TestVersionCard(title: "Title", subtitle: "Subtitle", detail: "Details", isRecommended: true, isSelected: false, action: {})
}
