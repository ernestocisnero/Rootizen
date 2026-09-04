//
//  PrimaryButton.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let color: Color
    var foreground: Color = .white
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 15, weight: .medium))
                .foregroundStyle(foreground)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: 10) {
        PrimaryButton(title: "Continue", color: AppColor.info) {}
        PrimaryButton(title: "Try again", color: AppColor.error) {}
        PrimaryButton(title: "Start quiz", color: AppColor.success) {}
        PrimaryButton(title: "Get Pro", color: AppColor.accent) {}
    }
    .padding()
}
