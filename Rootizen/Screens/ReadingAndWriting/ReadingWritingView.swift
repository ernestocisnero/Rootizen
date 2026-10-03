//
//  ReadingWritingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//

import SwiftUI

private enum PracticeMode: String, CaseIterable, Identifiable {
    case reading = "Reading"
    case writing = "Writing"
    var id: String { rawValue }
}

struct ReadingWritingView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(SpeechSynthesisService.self) private var speechService
    @Environment(SpeechRecognitionService.self) private var speechRecognitionService

    @State private var selectedMode: PracticeMode = .reading
    @State private var speakingSentence: SpeakingSentence?

    private var sentences: [String] {
        selectedMode == .reading ? PracticeSentences.reading : PracticeSentences.writing
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {

                    Text("You may be asked to read or write sentences in you exam. Practice with the examples below.")
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                        .secondaryTitle()

                    Picker("Mode", selection: $selectedMode) {
                        ForEach(PracticeMode.allCases) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    .padding(.top, 8)

                    LazyVStack(spacing: 12) {
                        if selectedMode == .reading {
                            ForEach(Array(sentences.enumerated()), id: \.offset) { index, sentence in

                                SentenceCard(number: index + 1, text: sentence,
                                             actionListen: { speechService.speak(sentence) },
                                             actionSpeak: { speakingSentence = SpeakingSentence(text: sentence) })
                            }
                        } else {
                            HStack {
                                Text(sentences.first ?? "")
                                Spacer()
                                Button {
                                    Task { try? await speechRecognitionService.startRecording() }
                                } label: {
                                    Image(systemName: "mic.fill")
                                }

                            }

                        }

                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 24)
            }
            .navigationTitle("Reading & Writing")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    DismissBtn(
                        backgroundColor: AppColor.success,
                        shadowBorderColor: AppColor.secondaryBackground
                    ) {
                        dismiss()
                    }
                }
                .sharedBackgroundVisibility(.hidden)
            }
            .sheet(item: $speakingSentence) { speaking in
                MicListeningSheet(targetSentence: speaking.text)
                    .presentationDetents([.medium, .large])
                    .presentationBackground(AppColor.background)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ReadingWritingView()
            .environment(SpeechSynthesisService())
            .environment(SpeechRecognitionService())
    }
}
