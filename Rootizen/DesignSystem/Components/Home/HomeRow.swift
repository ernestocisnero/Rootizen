//
//  GameCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct HomeRow: View {
    let title: String
    let subtitle: String
    let systemImage: String
    let isPro: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Label {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(title)
                            
                        if !subtitle.isEmpty {
                            Text(subtitle)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
                } icon: {
                    Image(systemName: systemImage)
                        .foregroundStyle(AppColor.success)
                }
                
                Spacer()
                
                if isPro {
                    Image(systemName: "star.hexagon")
                        .foregroundStyle(.secondary)
                        .headline()
                }
            }
        }
        .foregroundStyle(isPro ? .secondary : .primary)
    }
}


#Preview {
    VStack(spacing: 10) {
        HomeRow(
            title: "Quiz",
            subtitle: "10 questions",
            systemImage: "book",
            isPro: false,
            action: {}
        )
        
        HomeRow(
            title: "Speak your answers",
            subtitle: "Listen and speak",
            systemImage: "waveform",
            isPro: true,
            action: { print("Listen and speak") }
        )
    }
    .padding()
    .frame(maxHeight: 250)
}
