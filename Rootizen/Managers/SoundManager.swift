//
//  SoundManager.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//


import AVFoundation
import Observation

enum SoundEvent: String {
    case correct
    case incorrect
    case quizComplete
}
 
final class SoundManager {
 
    static let shared = SoundManager()
 
    var isEnabled: Bool {
        get {
            UserDefaults.standard.object(forKey: "soundEnabled") as? Bool ?? true
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "soundEnabled")
        }
    }
 
    private var player: AVAudioPlayer?
 
    // Dedicated serial queue — audio session setup and AVAudioPlayer
    // creation/playback all happen here, off the main thread, which is
    // what the console warning is asking for.
    private let queue = DispatchQueue(label: "com.rootizen.soundmanager", qos: .userInitiated)
 
    private init() {
        configureAudioSession()
    }
 
    /// Configured once, lazily, off the main thread. .ambient is the
    /// right category for short UI sound effects specifically — unlike
    /// the .playAndRecord / .playback categories the Reading & Writing
    /// feature uses, .ambient respects the silent switch and mixes with
    /// any other audio (e.g. Music) instead of interrupting it.
    private func configureAudioSession() {
        queue.async {
            let session = AVAudioSession.sharedInstance()
            try? session.setCategory(.ambient, mode: .default, options: [.mixWithOthers])
            try? session.setActive(true)
        }
    }
 
    func play(_ event: SoundEvent) {
        guard isEnabled else { return }
 
        guard let url = Bundle.main.url(
            forResource: event.rawValue,
            withExtension: "wav"
        ) else {
            print("⚠️ Missing sound file: \(event.rawValue).wav")
            return
        }
 
        queue.async { [weak self] in
            do {
                let player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
                self?.player = player
            } catch {
                print("⚠️ Could not play \(event.rawValue): \(error)")
            }
        }
    }
}
