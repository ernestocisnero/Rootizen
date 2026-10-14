//
//  CivicPassageView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/13/26.
//

import SwiftUI

struct CivicPassage: Identifiable, Hashable {
    let id: String
    let title: String
    let subtitle: String
    let english: String
    let learnMoreURL: URL?
}

struct CivicPassageView: View {
    let passage: CivicPassage
    let isPlaying: Bool
    let onToggleListen: () -> Void
    
    var body: some View {
        List {
            Section {
                Text(passage.english)
                    .bodyText()
                    .lineSpacing(6)
            } header: {
                Text(passage.subtitle)
            }
            
            if let url = passage.learnMoreURL {
                Section {
                    Link(destination: url) {
                        Label("Learn more", systemImage: "book")
                    }
                }
            }
        }
        .navigationTitle(passage.title)
        .navigationBarTitleDisplayMode(.inline)
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 12) {
                listenButton
            }
            .padding(.horizontal)
            .padding(.top, 12)
            .padding(.bottom, 8)
        }
    }
    
    private var listenButton: some View {
        Button(action: onToggleListen) {
            Label(isPlaying ? "Stop" : "Listen",
                  systemImage: isPlaying ? "stop.fill" : "play.fill")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 6)
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
}

extension CivicPassage {
    static let anthem = CivicPassage(
        id: "anthem",
        title: "The Star-Spangled Banner",
        subtitle: "The National Anthem",
        english: """
        Oh, say can you see, by the dawn’s early light,
        What so proudly we hailed at the twilight’s last gleaming,
        Whose broad stripes and bright stars, through the perilous fight,
        O’er the ramparts we watched, were so gallantly streaming?
        And the rocket’s red glare, the bombs bursting in air,
        Gave proof through the night that our flag was still there.
        Oh, say does that star-spangled banner yet wave
        O’er the land of the free and the home of the brave?
        """,
        learnMoreURL: nil
    )
    
    static let pledge = CivicPassage(
        id: "pledge",
        title: "Pledge of Allegiance",
        subtitle: "Recited at citizenship ceremonies",
        english: "I pledge allegiance to the Flag of the United States of America, and to the Republic for which it stands, one Nation under God, indivisible, with liberty and justice for all.",
        learnMoreURL: nil
    )
}

#Preview {
    NavigationStack {
        CivicPassageView(passage: .pledge, isPlaying: false) { }
    }
}
