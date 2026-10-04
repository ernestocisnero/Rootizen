//
//  WritingEvaluationSheet.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/3/26.
//


import SwiftUI

struct WritingSentenceItem: Identifiable {
    let id = UUID()
    let text: String
}

struct WritingEvaluationSheet: View {
    let targetSentence: String

    @Environment(SpeechSynthesisService.self) private var speechService
    @Environment(\.dismiss) private var dismiss

    @State private var typedText: String = ""
    @State private var evaluation: (results: [WordMatchResult], accuracy: Double)?
    @FocusState private var isFieldFocused: Bool

    /// Preview-only override — see MicListeningSheet for the same pattern.
    private let previewEvaluation: (results: [WordMatchResult], accuracy: Double)?

    init(
        targetSentence: String,
        previewEvaluation: (results: [WordMatchResult], accuracy: Double)? = nil
    ) {
        self.targetSentence = targetSentence
        self.previewEvaluation = previewEvaluation
        _evaluation = State(initialValue: previewEvaluation)
    }

    private var isReviewing: Bool { evaluation != nil }

    var body: some View {
        VStack(spacing: 20) {
            if isReviewing {
                reviewView
            } else {
                inputView
            }
        }
        .padding()
        .onAppear {
            speechService.speak(targetSentence)
        }
    }

    // MARK: - Input

    private var inputView: some View {
        VStack(spacing: 20) {
            Button {
                speechService.speak(targetSentence)
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: speechService.isSpeaking ? "speaker.wave.3.fill" : "speaker.wave.2.fill")
                        .font(.largeTitle)
                        .foregroundStyle(AppColor.accent)

                    Text(speechService.isSpeaking ? "Playing…" : "Tap to listen again")
                        .secondaryTitle()
                }
            }
            .buttonStyle(.plain)
            .padding(.top, 10)

            TextField("Type what you heard", text: $typedText, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .focused($isFieldFocused)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.sentences)
                .padding(.horizontal, 4)

            Button {
                check()
            } label: {
                Text("Check")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .tint(AppColor.accent)
            .disabled(typedText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
        }
        .onAppear {
            // Slight delay so the sheet's presentation animation finishes
            // before the keyboard pops — avoids a jarring double-animation.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                isFieldFocused = true
            }
        }
    }

    // MARK: - Review

    private var reviewView: some View {
        VStack(spacing: 16) {
            if let evaluation {
                Text(evaluation.accuracy, format: .percent.precision(.fractionLength(0)))
                    .font(.largeTitle.bold())
                    .foregroundStyle(evaluation.accuracy >= 0.8 ? AppColor.success : Color(.systemOrange))

                WordHighlightFlow(results: evaluation.results)
                    .padding(.vertical)

                VStack(alignment: .leading, spacing: 4) {
                    Text("Correct sentence")
                        .label()
                    Text(targetSentence)
                        .bodyText()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
            }

            HStack(spacing: 12) {
                Button {
                    Task { tryAgain() }
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

    // MARK: - Actions

    private func check() {
        evaluation = WordMatchEvaluator.evaluate(target: targetSentence, candidate: typedText)
        isFieldFocused = false
    }

    private func tryAgain() {
        typedText = ""
        evaluation = nil
        speechService.speak(targetSentence)
    }
}

#Preview("Input") {
    WritingEvaluationSheet(targetSentence: "The President lives in the White House.")
        .environment(SpeechSynthesisService())
}

#Preview("Reviewing") {
    WritingEvaluationSheet(
        targetSentence: "The President lives in the White House.",
        previewEvaluation: (
            results: [
                WordMatchResult(word: "the", isCorrect: true),
                WordMatchResult(word: "president", isCorrect: true),
                WordMatchResult(word: "lives", isCorrect: false),
                WordMatchResult(word: "in", isCorrect: true),
                WordMatchResult(word: "the", isCorrect: true),
                WordMatchResult(word: "white", isCorrect: true),
                WordMatchResult(word: "house", isCorrect: true)
            ],
            accuracy: 0.86
        )
    )
    .environment(SpeechSynthesisService())
}
