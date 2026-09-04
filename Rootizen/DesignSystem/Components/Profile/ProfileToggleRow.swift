//
//  ProfileToggleRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

struct ProfileToggleRow: View {
    let icon: String
    let title: String
    @Binding var isOn: Bool

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(AppColor.thirdText)
                .frame(width: 18)

            Text(title)
                .bodyText()

            Spacer()

            Toggle("", isOn: $isOn)
                .labelsHidden()
                .tint(AppColor.success)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 13)
    }
}

#Preview {
    ProfileToggleRow(icon: "speaker.wave.2", title: "Sound effects", isOn: .constant(true))
        .padding()
}
