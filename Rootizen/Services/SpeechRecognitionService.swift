//
//  SpeechRecognitionService.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//
//  Mic -> on-device transcript, for Reading practice. Deliberately
//  requiresOnDeviceRecognition = true: free, offline, no server round
//  trip, matching the "word-match only" decision — this is NOT a
//  pronunciation scorer, just speech-to-text.
//

import Foundation
import Speech
import AVFoundation

@Observable
final class SpeechRecognitionService {
    private(set) var transcript: String = ""
    private(set) var isRecording = false

    private let recognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))
    private var request: SFSpeechAudioBufferRecognitionRequest?
    private var task: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()

    enum RecognitionError: Error {
        case notAuthorized
        case recognizerUnavailable
    }

    /// Request both permissions this flow needs. Call once, before the
    /// first recording attempt — e.g. when the Reading tab first appears.
    func requestAuthorization() async -> Bool {
        let speechStatus = await withCheckedContinuation { continuation in
            SFSpeechRecognizer.requestAuthorization { status in
                continuation.resume(returning: status)
            }
        }

        let micGranted = await AVAudioApplication.requestRecordPermission()

        return speechStatus == .authorized && micGranted
    }

    func startRecording() throws {
        guard let recognizer, recognizer.isAvailable else {
            throw RecognitionError.recognizerUnavailable
        }

        task?.cancel()
        task = nil
        transcript = ""

        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
        try audioSession.setActive(true, options: .notifyOthersOnDeactivation)

        let request = SFSpeechAudioBufferRecognitionRequest()
        request.shouldReportPartialResults = true
        request.requiresOnDeviceRecognition = true
        self.request = request

        let inputNode = audioEngine.inputNode
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { [weak self] buffer, _ in
            self?.request?.append(buffer)
        }

        audioEngine.prepare()
        try audioEngine.start()
        isRecording = true

        task = recognizer.recognitionTask(with: request) { [weak self] result, error in
            guard let self else { return }

            if let result {
                self.transcript = result.bestTranscription.formattedString
            }
            if error != nil || result?.isFinal == true {
                self.stopRecording()
            }
        }
    }

    func stopRecording() {
        guard isRecording else { return }
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)
        request?.endAudio()
        task = nil
        isRecording = false
    }
}
