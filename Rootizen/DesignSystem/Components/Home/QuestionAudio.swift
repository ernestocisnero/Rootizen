//
//  QuestionAudio.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

struct QuestionAudio: View {
    let items: [AudioItem]
    @State private var player = QuestionAudioPlayer(engine: SpeechSynthesisService())

        var body: some View {
            VStack(spacing: 32) {
                if let item = player.currentItem {
                    Text(player.currentPart == .question ? item.question : item.answer)
                        .multilineTextAlignment(.center)
                }
                HStack(spacing: 40) {
                    Button { player.previous() } label: { Image(systemName: "backward.fill") }
                    Button { player.togglePlayPause() } label: {
                        Image(systemName: player.state == .playing ? "pause.fill" : "play.fill")
                            .font(.largeTitle)
                    }
                    Button { player.next() } label: { Image(systemName: "forward.fill") }
                }
            }
            .padding()
            .task { player.load(items, language: "en-US") }
            .onDisappear { player.stop() }
        }
}

#Preview {
    QuestionAudio(items: AudioItem.samples)
}
