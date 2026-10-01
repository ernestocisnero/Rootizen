//
//  ReadingWritingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//

import SwiftUI

struct ReadingWritingView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedMode: PracticeMode = .reading

    private var sentences: [String] {
        selectedMode == .reading ? PracticeSentences.reading : PracticeSentences.writing
    }

    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 16) {
                    Picker("Mode", selection: $selectedMode) {
                        ForEach(PracticeMode.allCases) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    .padding(.top, 8)

                    LazyVStack(spacing: 12) {
                        ForEach(Array(sentences.enumerated()), id: \.offset) { index, sentence in
                            SentenceCard(number: index + 1, text: sentence)
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
        }
        
    }
}

private enum PracticeMode: String, CaseIterable, Identifiable {
    case reading = "Reading"
    case writing = "Writing"

    var id: String { rawValue }
}

private struct SentenceCard: View {
    let number: Int
    let text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Sentence \(number)")
                .label()

            Text(text)
                .font(.title3.weight(.medium))
                .foregroundStyle(.primary)
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    NavigationStack {
        ReadingWritingView()
    }
}
