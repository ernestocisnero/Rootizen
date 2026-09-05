//
//  SoundManager.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//


import AVFoundation

enum SoundEvent: String {
    case correct
    case incorrect
    case quizComplete
}

@Observable
final class SoundManager {

    static let shared = SoundManager()

    /// Persisted mute preference — flip this from a settings toggle.
    var isEnabled: Bool {
        get { UserDefaults.standard.object(forKey: "soundEnabled") as? Bool ?? true }
        set { UserDefaults.standard.set(newValue, forKey: "soundEnabled") }
    }

    private var player: AVAudioPlayer?

    private init() {
        try? AVAudioSession.sharedInstance().setCategory(.ambient, options: [.mixWithOthers])
    }

    func play(_ event: SoundEvent) {
        guard isEnabled else { return }
        guard let url = Bundle.main.url(forResource: event.rawValue, withExtension: "wav") else {
            print("⚠️ Missing sound file: \(event.rawValue).wav")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("⚠️ Could not play \(event.rawValue): \(error)")
        }
    }
}
