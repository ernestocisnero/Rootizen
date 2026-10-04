//
//  MicListeningSheet.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//
//  Presented when the user taps "Speak" on a Reading sentence. Requests
//  mic/speech permission, shows a pulsing mic while recording, then runs
//  the transcript through WordMatchEvaluator and shows per-word results.
//

import SwiftUI

struct SpeakingSentence: Identifiable {
    let id = UUID()
    let text: String
}

struct MicListeningSheet: View {
    let targetSentence: String
    
    @Environment(SpeechRecognitionService.self) private var speechRecognitionService
    @Environment(\.dismiss) private var dismiss
    
    @State private var phase: Phase = .requestingPermission
    @State private var evaluation: (results: [WordMatchResult], accuracy: Double)?
    @State private var pulse = false
    
    private enum Phase {
        case requestingPermission
        case permissionDenied
        case listening
        case reviewing
    }
    
    var body: some View {
        VStack(spacing: 20) {
            switch phase {
            case .requestingPermission:
                ProgressView()
                    .padding(.top, 40)
            case .permissionDenied:
                permissionDeniedView
            case .listening:
                listeningView
            case .reviewing:
                reviewView
            }
        }
        .padding()
        .task {
            await requestAndStart()
        }
        .onDisappear {
            speechRecognitionService.stopRecording()
        }
    }
    
    // MARK: - Listening
    
    private var listeningView: some View {
        VStack(spacing: 24) {
            ZStack {
                Circle()
                    .fill(AppColor.success.opacity(0.15))
                    .frame(width: pulse ? 140 : 100, height: pulse ? 140 : 100)
                    .animation(
                        .easeInOut(duration: 1).repeatForever(autoreverses: true),
                        value: pulse
                    )
                
                Circle()
                    .fill(AppColor.success)
                    .frame(width: 72, height: 72)
                
                Image(systemName: "mic.fill")
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            .onAppear { pulse = true }
            
            Text("Listening…")
                .primaryTitle(AppColor.secondaryText)
            
            Text(speechRecognitionService.transcript.isEmpty
                 ? "Say the sentence out loud"
                 : speechRecognitionService.transcript)
            .secondaryTitle()
            .multilineTextAlignment(.center)
            .frame(minHeight: 40)
            
            Button {
                finishListening()
            } label: {
                Text("Done")
                    .bodyText(AppColor.info)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(AppColor.info.muted(0.1), in: Capsule())
            }
        }
    }
    
    // MARK: - Review
    
    private var reviewView: some View {
        VStack(spacing: 16) {
            if let evaluation {
                Text(evaluation.accuracy, format: .percent.precision(.fractionLength(0)))
                    .font(.largeTitle)
                    .foregroundStyle(evaluation.accuracy >= 0.8 ? AppColor.success : AppColor.error)
                
                WordHighlightFlow(results: evaluation.results)
            }
            
            HStack(spacing: 12) {
                Button {
                    Task { await requestAndStart() }
                } label: {
                    Text("Try Again")
                        .bodyText(AppColor.info)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(AppColor.info.muted(0.1), in: Capsule())
                }
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Text("Done")
                        .bodyText(AppColor.success)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(AppColor.success.muted(0.1), in: Capsule())
                }
            }
            .padding()
        }
        .onAppear{
            SoundManager.shared.play(.quizComplete)
        }
    }
    
    // MARK: - Permission denied
    
    private var permissionDeniedView: some View {
        VStack(spacing: 12) {
            Image(systemName: "mic.slash.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 50, maxHeight: 50)
                .foregroundStyle(AppColor.error.muted(0.8))
            
            Text("Microphone access is needed to practice speaking.")
                .secondaryTitle(AppColor.error.muted(0.8))
                .multilineTextAlignment(.center)
             
            Button{
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
            }label:{
                Text("Open Settings")
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                    .bold()
                    .bodyText(AppColor.secondaryText)
                    .background(AppColor.secondaryBackground, in: RoundedRectangle(cornerRadius: 100))
                    .padding()
            }
        }
    }
    
    // MARK: - Actions
    
    private func requestAndStart() async {
        phase = .requestingPermission
        evaluation = nil
        
        let granted = await speechRecognitionService.requestAuthorization()
        guard granted else {
            phase = .permissionDenied
            return
        }
        
        do {
            try await speechRecognitionService.startRecording()
            phase = .listening
        } catch {
            phase = .permissionDenied
        }
    }
    
    private func finishListening() {
        speechRecognitionService.stopRecording()
        evaluation = WordMatchEvaluator.evaluate(
            target: targetSentence,
            candidate: speechRecognitionService.transcript
        )
        phase = .reviewing
    }
}

#Preview {
    Text("Host")
        .sheet(isPresented: .constant(true)) {
            MicListeningSheet(targetSentence: "The President lives in the White House.")
                .environment(SpeechRecognitionService())
                .presentationDetents([.medium])
                .presentationBackground(AppColor.background)
        }
}

