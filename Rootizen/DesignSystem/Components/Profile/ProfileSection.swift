//
//  ProfileSection.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//


import SwiftUI

struct ProfileRowItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    var tint: Color = AppColor.primaryText
    var action: () -> Void = {}
}

struct ProfileSection<Trailing: View>: View {
    var title: String? = nil
    let rows: [ProfileRowItem]
    @ViewBuilder var trailing: () -> Trailing

    init(
        title: String? = nil,
        rows: [ProfileRowItem],
        @ViewBuilder trailing: @escaping () -> Trailing = { EmptyView() }
    ) {
        self.title = title
        self.rows = rows
        self.trailing = trailing
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            if let title {
                Text(title.uppercased())
                    .foregroundStyle(AppColor.thirdText)
                    .font(.system(size: 12, weight: .medium))
                    .padding(.leading, 4)
            }

            VStack(spacing: 0) {
                ForEach(Array(rows.enumerated()), id: \.element.id) { index, row in
                    ProfileRow(icon: row.icon, title: row.title, tint: row.tint, action: row.action)

                    if index != rows.count - 1 || Trailing.self != EmptyView.self {
                        Divider()
                            .overlay(AppColor.border)
                            .padding(.leading, 14 + 22 + 12)
                    }
                }
                trailing()
            }
            .background(AppColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(AppColor.border, lineWidth: 0.5)
            }
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        ProfileSection(
            title: "Preferences",
            rows: [
                ProfileRowItem(icon: "doc.text", title: "Questions version"),
                ProfileRowItem(icon: "character.bubble", title: "Language"),
                ProfileRowItem(icon: "bell", title: "Notifications")
            ]
        )

        ProfileSection(
            title: "Support",
            rows: [
                ProfileRowItem(icon: "questionmark.circle", title: "FAQs"),
                ProfileRowItem(icon: "star", title: "Rate this app")
            ]
        )

        ProfileSection(
            rows: [
                ProfileRowItem(
                    icon: "arrow.counterclockwise",
                    title: "Reset onboarding",
                    tint: AppColor.error
                )
            ]
        )
    }
    .padding()
}
