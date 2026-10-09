//
//  ProLockedModifier.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/4/26.
//


import SwiftUI

private struct ProLockedModifier: ViewModifier {
    let label: String

    func body(content: Content) -> some View {
        content
            .blur(radius: 5)
            .opacity(0.5)
            .allowsHitTesting(false)
            .overlay {
                Label(label, systemImage: "lock.fill")
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(AppColor.leagueColor(for: .gold))
                    .padding(.horizontal, 14)
                    .padding(.vertical, 8)
                    .background(AppColor.leagueColor(for: .gold).muted(0.2), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
            }
    }
}

extension View {
    func proLocked(_ label: String = "Plus Feature") -> some View {
        modifier(ProLockedModifier(label: label))
    }
}


