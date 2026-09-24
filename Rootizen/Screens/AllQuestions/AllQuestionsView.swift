//
//  AllQuestionsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/3/26.
//

import SwiftUI

struct AllQuestionsView: View {
    @Environment(\.dismiss) private var dismiss

    let questionsVersion: QuestionVersion

    var questions: [Question] {
        questionsVersion == .v2025 ? q2025version : q2008version
    }

    private var versionLabel: String {
        questionsVersion == .v2008 ? "Version 2008 · 100 Questions" : "Version 2025 · 125 Questions"
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(questions) { question in
                        FlipCard(question: question)
                    }
                }
                .padding()
            }
            .navigationTitle(versionLabel)
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top) {
                Text("Tap each card to see the answer")
                    .secondaryTitle()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 6)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            //.foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    AllQuestionsView(questionsVersion: .v2025)
}
