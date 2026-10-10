//
//  SpeechSynthesisService.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//
//  Text -> spoken audio, for Writing practice ("listen, then type what
//  you heard"). No permissions needed — playback only.
//

import Foundation
import AVFoundation

@MainActor
@Observable
final class SpeechSynthesisService: NSObject {
    private(set) var isSpeaking = false

    private let synthesizer = AVSpeechSynthesizer()
    private var currentUtteranceID: ObjectIdentifier?
    private var onFinished: (@MainActor () -> Void)?

    override init() {
        super.init()
        synthesizer.delegate = self
    }

    // original API, unchanged for existing callers
    func speak(_ text: String) {
        
        speak(text, language: "en-US", leadingPause: 0, onFinished: {})
    }

    
    func speak(_ text: String, language: String, leadingPause: TimeInterval, onFinished: @escaping @MainActor () -> Void) {
        
        stop()   // one utterance in flight at a time, never a queue

        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate
        utterance.preUtteranceDelay = leadingPause

        currentUtteranceID = ObjectIdentifier(utterance)
        self.onFinished = onFinished
        configureSessionIfNeeded()
        synthesizer.speak(utterance)
        if synthesizer.isPaused { synthesizer.continueSpeaking() }  // defensive
    }

    func pause()  { synthesizer.pauseSpeaking(at: .immediate) }  // keeps position
    func resume() { synthesizer.continueSpeaking() }

    func stop() {
        currentUtteranceID = nil   // invalidates any late delegate callbacks
        onFinished = nil
        synthesizer.stopSpeaking(at: .immediate)
        isSpeaking = false
    }
    
    private func configureSessionIfNeeded() {
        let session = AVAudioSession.sharedInstance()
        guard session.category != .playback else { return }   // don't reset it on every utterance
        try? session.setCategory(.playback, mode: .spokenAudio, options: [.mixWithOthers])
    }
}

extension SpeechSynthesisService: SpeechEngine {}

extension SpeechSynthesisService: AVSpeechSynthesizerDelegate {
    nonisolated func speechSynthesizer(_ s: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        
        let id = ObjectIdentifier(utterance)
        Task { @MainActor in
            guard id == self.currentUtteranceID else { return }
            self.isSpeaking = true
        }
    }

    nonisolated func speechSynthesizer(_ s: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        let id = ObjectIdentifier(utterance)
        Task { @MainActor in
            guard id == self.currentUtteranceID else { return }
            self.isSpeaking = false
            let done = self.onFinished
            self.onFinished = nil
            self.currentUtteranceID = nil
            done?()
        }
    }
    // No didCancel: stop() already resets state, and cancelled speech must not advance the queue.
}
