//
//  QuestionAudioPlayer.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI
import Foundation


@MainActor
@Observable
final class QuestionAudioPlayer {
    private(set) var items: [AudioItem] = []
    private(set) var currentIndex = 0
    private(set) var currentPart: Part = .question
    private(set) var state: PlaybackState = .idle

    // Tunable gaps (seconds)
    var pauseBeforeAnswer: TimeInterval = 1.5
    var pauseBetweenQuestions: TimeInterval = 2.0

    private let engine: SpeechEngine
    private var language = "en-US"
    private var playbackToken = UUID()
    private var gapTask: Task<Void, Never>?
    private var isInGap = false
    private var resumeNeedsRestart = false
    var onIndexChanged: ((Int) -> Void)?

    init(engine: SpeechEngine) { self.engine = engine }

    var currentItem: AudioItem? {
        items.indices.contains(currentIndex) ? items[currentIndex] : nil
    }

    func load(_ items: [AudioItem], language: String, startAt index: Int = 0) {
        stop()
        self.items = items
        self.language = language
        currentIndex = items.indices.contains(index) ? index : 0
    }

    // MARK: Controls

    func play() {
        switch state {
        case .idle:
            guard currentItem != nil else { return }
            state = .playing
            speakCurrentPart()
        case .paused:
            state = .playing
            if resumeNeedsRestart { speakCurrentPart() } else { engine.resume() }
        case .playing:
            break
        }
    }

    func pause() {
        guard state == .playing else { return }
        if isInGap {                       // silent gap: nothing to pause in the engine
            gapTask?.cancel()
            isInGap = false
            resumeNeedsRestart = true
        } else {
            engine.pause()
        }
        state = .paused
    }

    func togglePlayPause() {
        state == .playing ? pause() : play()
    }

    func next() {
        guard currentIndex < items.count - 1 else { return }
        jump(to: currentIndex + 1)
    }

    func previous() {
        jump(to: max(currentIndex - 1, 0))
    }

    func stop() {
        playbackToken = UUID()
        gapTask?.cancel()
        isInGap = false
        resumeNeedsRestart = false
        engine.stop()
        currentPart = .question
        state = .idle
    }

    // MARK: Internals

    private func jump(to index: Int) {
        engine.stop()
        currentIndex = index
        onIndexChanged?(index)
        currentPart = .question
        state = .playing
        speakCurrentPart()
    }

    private func speakCurrentPart(after gap: TimeInterval = 0) {
        guard let item = currentItem else { return }
        let text = currentPart == .question ? item.question : item.answer

        gapTask?.cancel()
        resumeNeedsRestart = false
        playbackToken = UUID()
        let token = playbackToken
        isInGap = gap > 0

        gapTask = Task { [weak self] in
            if gap > 0 { try? await Task.sleep(for: .seconds(gap)) }
            guard let self, !Task.isCancelled, token == self.playbackToken else { return }
            self.isInGap = false
            self.engine.speak(text, language: self.language, leadingPause: 0) { [weak self] in
                guard let self, token == self.playbackToken else { return }
                self.handleUtteranceFinished()
            }
        }
    }

    private func handleUtteranceFinished() {
        print("utterance finished", Date())   // DEBUG: remove after testing
        guard state == .playing else { return }
        switch currentPart {
        case .question:
            currentPart = .answer
            speakCurrentPart(after: pauseBeforeAnswer)
        case .answer:
            if currentIndex < items.count - 1 {
                currentIndex += 1
                onIndexChanged?(currentIndex)
                currentPart = .question
                speakCurrentPart(after: pauseBetweenQuestions)
            } else {
                currentIndex = 0
                onIndexChanged?(0)
                stop()
            }
        }
    }
}
