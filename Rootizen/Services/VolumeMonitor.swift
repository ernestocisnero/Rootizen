//
//  VolumeMonitor.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import AVFoundation
import Observation

@MainActor
@Observable
final class VolumeMonitor {
    private(set) var volume: Float = AVAudioSession.sharedInstance().outputVolume
    private var observation: NSKeyValueObservation?

    /// iPhone volume moves in steps of about 0.06, so under 0.1 catches mute and the first step.
    var isLow: Bool { volume < 0.1 }

    init() {
        observation = AVAudioSession.sharedInstance().observe(\.outputVolume, options: [.new]) { [weak self] _, change in
            guard let value = change.newValue else { return }
            DispatchQueue.main.async {
                MainActor.assumeIsolated { self?.volume = value }
            }
        }
    }
}
