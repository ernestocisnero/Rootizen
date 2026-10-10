//
//  ListeningTheQuestionsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

import SwiftUI

struct ListeningTheQuestionsView: View {
    @Environment(SpeechSynthesisService.self) private var speechService
    @Environment(AppState.self) private var appState
    @State private var player: QuestionAudioPlayer?
    @State private var volumeMonitor = VolumeMonitor()
    @State private var showVolumeToast = false
    @State private var toastTask: Task<Void, Never>?
    
    var body: some View {
        Group {
            if let player {
                QuestionAudioPlayerView(player: player)
            } else {
                ProgressView()
            }
        }
        .task(id: appState.questionVersion) { // reruns when the year changes
            loadPlayer()
        }
        .onDisappear {
            player?.stop()
        }
        .toast(isPresented: showVolumeToast,
               systemImage: "speaker.slash.fill",
               message: "Volume is low")
        .onChange(of: player?.state) { _, state in
            if state == .playing && volumeMonitor.isLow { flashToast() }
        }
        .onChange(of: volumeMonitor.isLow) { _, low in
            if !low { showVolumeToast = false }                              // volume raised: hide it
            else if player?.state == .playing { flashToast() }               // volume dropped mid-playback
        }
    }
    
    private func flashToast() {
        toastTask?.cancel()   // so an old timer can't hide a new toast
        showVolumeToast = true
        toastTask = Task {
            try? await Task.sleep(for: .seconds(3))
            if !Task.isCancelled { showVolumeToast = false }
        }
    }
    
    
    private func loadPlayer() {
        let version = appState.questionVersion
        let language = AudioLanguage.english // swap in your selected-language setting
        let key = "audioLastIndex_\(version.rawValue)_\(language.voiceCode)"
        
        let p = player ?? QuestionAudioPlayer(engine: speechService)
        p.onIndexChanged = { UserDefaults.standard.set($0, forKey: key) }
        p.load(AudioItem.items(for: version, language: language),
               language: language.voiceCode,
               startAt: UserDefaults.standard.integer(forKey: key))
        player = p
    }
}

#Preview {
    ListeningTheQuestionsView()
        .environment(SpeechSynthesisService())
        .environment(AppState())
}
