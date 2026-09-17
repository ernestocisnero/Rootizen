//
//  DismissBtn.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/3/26.
//

import SwiftUI

struct DismissBtn: View {
    @State private var feedbackTrigger: Bool = false
    let backgroundColor: Color
    let shadowBorderColor: Color
    let action: () -> Void

    var body: some View {
        Button {
            feedbackTrigger.toggle()
            action()
        } label: {
            Image(systemName: "xmark")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(shadowBorderColor)
                .frame(width: 36, height: 36)
                .background(backgroundColor)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(AppColor.border, lineWidth: 0.5)
                }
        }
        .sensoryFeedback(.impact, trigger: feedbackTrigger)
    }
}

#Preview {
    DismissBtn(backgroundColor: AppColor.accentMuted, shadowBorderColor: AppColor.accent, action: {})
}
