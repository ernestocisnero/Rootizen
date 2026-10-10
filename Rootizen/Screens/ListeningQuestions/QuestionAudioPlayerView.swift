//
//  QuestionAudioPlayerView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

struct QuestionAudioPlayerView: View {
    let player: QuestionAudioPlayer
    @Environment(\.dismiss) private var dismiss
    @Environment(SpeechSynthesisService.self) private var speechService

    private let barCount = 44

    var body: some View {
        VStack(spacing: 0) {
            header
            transcript
                .padding(.top)
            progressSection
            controls
        }
        .padding(.horizontal, 24)
        .background(Color(.systemBackground).ignoresSafeArea())
    }

    // MARK: Header

    private var header: some View {
        HStack {
            Button { dismiss() } label: {
                Image(systemName: "chevron.down")
                    .headline(AppColor.secondaryText)
            }
            .accessibilityLabel("Close")

            Spacer()

            VStack(spacing: 2) {
                Text("Now Playing")
                    .label()

                Text("Question \(player.currentIndex + 1) of \(player.items.count)")
                    .primaryTitle(AppColor.success)
            }

            Spacer()

            Color.clear.frame(width: 24, height: 24)   // balances the chevron
        }
        .foregroundStyle(.primary)
        .padding(.vertical, 12)
    }

    // MARK: Transcript

    private var transcript: some View {
        ScrollViewReader { proxy in
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 36) {
                    ForEach(Array(player.items.enumerated()), id: \.element.id) { index, item in
                        itemBlock(item, index: index)
                            .id(index)
                    }
                }
                .padding(.vertical, 40)
            }
            .mask(fadeMask)
            .onChange(of: player.currentIndex) { _, newIndex in
                withAnimation(.easeInOut(duration: 0.4)) {
                    proxy.scrollTo(newIndex, anchor: .top)
                }
            }
        }
    }

    private func itemBlock(_ item: AudioItem, index: Int) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(item.question)
                .headline(AppColor.secondaryText)
                .opacity(questionOpacity(index))
            Text(item.answer)
                .primaryTitle(AppColor.success)
                .opacity(answerOpacity(index))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .animation(.easeInOut(duration: 0.3), value: player.currentPart)
    }

    private func questionOpacity(_ index: Int) -> Double {
        guard index == player.currentIndex else { return 0.25 }
        return player.currentPart == .question ? 1 : 0.35
    }

    // Answer stays hidden until it's spoken, so the text doesn't spoil the recall gap.
    private func answerOpacity(_ index: Int) -> Double {
        if index < player.currentIndex { return 0.25 }
        if index == player.currentIndex { return player.currentPart == .answer ? 1 : 0 }
        return 0
    }

    private var fadeMask: some View {
        LinearGradient(
            stops: [
                .init(color: .clear, location: 0),
                .init(color: .black, location: 0.08),
                .init(color: .black, location: 0.85),
                .init(color: .clear, location: 1)
            ],
            startPoint: .top, endPoint: .bottom
        )
    }

    // MARK: Progress

    private var progress: Double {
        guard !player.items.isEmpty else { return 0 }
        let half = player.currentPart == .answer ? 0.5 : 0
        return (Double(player.currentIndex) + half) / Double(player.items.count)
    }

    private var progressSection: some View {
        VStack(spacing: 8) {
            HStack(spacing: 3) {
                ForEach(0..<barCount, id: \.self) { i in
                    Capsule()
                        .fill(Double(i) / Double(barCount) < progress
                              ? AppColor.success : Color.secondary.opacity(0.3))
                        .frame(height: barHeight(i))
                }
            }
            .frame(height: 40)
            .animation(.easeInOut(duration: 0.3), value: progress)

            HStack {
                Text("\(player.currentIndex + 1)")
                Spacer()
                Text("\(player.items.count)")
            }
            .font(.caption)
            .foregroundStyle(AppColor.secondaryText)
        }
        .padding(.top, 8)
    }

    // Deterministic "waveform" shape, purely decorative.
    private func barHeight(_ i: Int) -> CGFloat {
        CGFloat(14 + abs(sin(Double(i) * 0.65)) * 22 + abs(cos(Double(i) * 0.31)) * 4)
    }

    // MARK: Controls

    private var controls: some View {
        HStack(spacing: 44) {
            Button { player.previous() } label: {
                Image(systemName: "backward.fill")
                    .headline()
            }
            .accessibilityLabel("Previous question")

            Button {
                player.togglePlayPause()
            } label: {
                Image(systemName: player.state == .playing ? "pause.fill" : "play.fill")
                    .font(.system(size: 28))
                    .foregroundStyle(.white)
                    .frame(width: 72, height: 72)
                    .background(Circle().fill(AppColor.success))
            }
            .accessibilityLabel(player.state == .playing ? "Pause" : "Play")

            Button { player.next() } label: {
                Image(systemName: "forward.fill")
                    .headline()
            }
            .disabled(player.currentIndex >= player.items.count - 1)
            .accessibilityLabel("Next question")
        }
        .buttonStyle(.plain)
        .foregroundStyle(.primary)
        .padding(.vertical, 24)
    }
}

#Preview{
    QuestionAudioPlayerView(player: QuestionAudioPlayer(engine: SpeechSynthesisService()))
        .environment(SpeechSynthesisService())
}
