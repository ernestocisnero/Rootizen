//
//  ToastVolume.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

struct ToastVolume: View {
    let systemImage: String
    let message: String

    var body: some View {
        Label(message, systemImage: systemImage)
            .font(.subheadline.weight(.medium))
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(.ultraThinMaterial, in: Capsule())
            .shadow(color: .black.opacity(0.15), radius: 8, y: 4)
    }
}

extension View {
    func toast(isPresented: Bool, systemImage: String, message: String) -> some View {
        overlay(alignment: .top) {
            if isPresented {
                ToastVolume(systemImage: systemImage, message: message)
                    .padding(.top, 8)
                    .transition(.move(edge: .top).combined(with: .opacity))
            }
        }
        .animation(.spring(duration: 0.35), value: isPresented)
    }
}
