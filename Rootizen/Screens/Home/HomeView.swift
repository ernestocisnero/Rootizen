//
//  HomeView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct HomeView: View {
    @Environment(AppState.self) private var appState
    @Environment(UserProgress.self) private var userProgress
    @Environment(RepresentativesService.self) private var repService

    @State private var startQuiz: Bool = false
    @State private var startFlashcard: Bool = false
    @State private var showRepsView: Bool = false
    @State private var showAllQuestions: Bool = false

    var body: some View {
        List {
            Section("Practice") {
                HomeRow(
                    title: "Quiz",
                    subtitle: "10 questions · Multiple selection",
                    systemImage: "book",
                    isPro: false,
                    action: { startQuiz = true }
                )
         
                HomeRow(
                    title: "Flashcards",
                    subtitle: "10 questions · True / False",
                    systemImage: "lanyardcard",
                    isPro: false,
                    action: { startFlashcard = true }
                )
                
                HomeRow(
                    title: "Senior Questions",
                    subtitle: "65/20 Exemption · Read and memorize",
                    systemImage: "magazine",
                    isPro: false,
                    action: { print("Senior Questions") }
                )
            }
         
            Section("Premium") {
                HomeRow(
                    title: "Listen the questions",
                    subtitle: "Listen and memorize",
                    systemImage: "headphones",
                    isPro: true,
                    action: { print("Listen the questions") }
                )
         
                HomeRow(
                    title: "Speak your answers",
                    subtitle: "Listen and speak",
                    systemImage: "waveform",
                    isPro: true,
                    action: { print("Listen and speak") }
                )
            }
         
            Section("Reference") {
                
                HomeRow(
                    title: "Meet your representatives",
                    subtitle: "Who your reps are? · Meet and memorize",
                    systemImage: "person.2",
                    isPro: false,
                    action: { showRepsView = true }
                )
                
                HomeRow(
                    title: "All Civics Questions",
                    subtitle: "\(appState.questionVersion == .v2008 ? "100 Questions" : "125 Questions") · Read and memorize",
                    systemImage: "book.closed",
                    isPro: false,
                    action: { showAllQuestions = true }
                )
                
                HomeRow(
                    title: "N-400 Questions",
                    subtitle: "Form questions · Read and memorize",
                    systemImage: "questionmark.folder",
                    isPro: false,
                    action: { print("N-400 Questions") }
                )
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Home")
        .listRowSeparator(.hidden)
        .scrollContentBackground(.hidden)
        .background(Color(.systemGroupedBackground))
        .scrollIndicators(.hidden)
        // MARK: Quiz sheet.
        .fullScreenCover(isPresented: $startQuiz) {
            QuizFlowView(isPresented: $startQuiz, questionVersion: appState.questionVersion)
        }
        // MARK: Flashcards
        .fullScreenCover(isPresented: $startFlashcard) {
            FlashcardFlowView(isPresented: $startFlashcard, flashcardsVersion: appState.questionVersion)
        }
        // MARK: All Questions sheet.
        .fullScreenCover(isPresented: $showAllQuestions) {
            AllQuestionsView(questionsVersion: appState.questionVersion)
        }
        // MARK: Meet Representatives sheet.
        .fullScreenCover(isPresented: $showRepsView) {
            RepsFlowView()
                .environment(appState)
                .environment(repService)
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .environment(AppState())
            .environment(UserProgress())
            .environment(RepresentativesService())
    }
}
