//
//  ProfileRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/27/26.
//

import SwiftUI

struct ProfileRow: View {
    @State private var feedbackTrigger = false
    let icon: String
    let title: String
    var tint: Color = AppColor.primaryText
    var action: () -> Void = {}

    var body: some View {
        Button{
            action()
            feedbackTrigger.toggle()
        }label:{
            HStack(spacing: 12) {
                Image(systemName: icon)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(AppColor.thirdText)
                    .frame(width: 22)

                Text(title)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(tint)

                Spacer()
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 13)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: feedbackTrigger)
    }
}

#Preview {
    ProfileRow(icon: "gearshape", title: "Settings") {}
        .padding()
}
