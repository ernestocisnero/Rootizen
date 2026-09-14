//
//  TestVersionInfoSection.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/13/26.
//

import SwiftUI

struct TestVersionInfoSection: View {

    @State private var isExpanded = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {

            Button {
                withAnimation(.easeInOut(duration: 0.2)) {
                    isExpanded.toggle()
                }
            } label: {
                HStack {
                    Image(systemName: "info.circle")

                    Text("Why are there two versions?")
                        .font(.headline)

                    Spacer()

                    Image(systemName: isExpanded
                          ? "chevron.up"
                          : "chevron.down")
                        .font(.caption)
                }
                .foregroundStyle(AppColor.primaryText)
                .padding(16)
            }
            .sensoryFeedback(.impact, trigger: isExpanded)

            if isExpanded {
                VStack(alignment: .leading, spacing: 10) {
                    Text("The citizenship test changed in 2025.")

                    Text("The version you take depends on when you filed your Form N-400.")

                    Text("Rootizen lets you study with either version so you can prepare for the test that applies to you.")
                }
                .font(.subheadline)
                .foregroundStyle(AppColor.secondaryText)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .background(AppColor.surface)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(AppColor.border, lineWidth: 1)
        }
    }
}

#Preview {
    TestVersionInfoSection()
}
