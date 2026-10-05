//
//  HomeView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI


struct HomeView: View {
    @Environment(AppState.self) private var appState
    @Environment(RepresentativesService.self) private var repService
    @Environment(PurchaseManager.self) private var purchaseManager
    
    @State private var startQuiz: Bool = false
    @State private var startFlashcard: Bool = false
    @State private var showRepsView: Bool = false
    @State private var showAllQuestions: Bool = false
    @State private var showReadingWriting: Bool = false
    @State private var showingPaywall: Bool = false
    
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
            }
            
            Section("Plus") {
                HomeRow(
                    title: "Reading & Writing",
                    subtitle: "Practice your reading and writing",
                    systemImage: "long.text.page.and.pencil",
                    isPro: !purchaseManager.isPremiumUnlocked,
                    action: {
                        if purchaseManager.isPremiumUnlocked{
                            showReadingWriting = true
                        }else{
                            showingPaywall = true
                        }
                        
                    }
                )
                
                HomeRow(
                    title: "Listen the questions",
                    subtitle: "Listen and memorize",
                    systemImage: "headphones",
                    isPro: !purchaseManager.isPremiumUnlocked,
                    action: {
                        
                        if purchaseManager.isPremiumUnlocked{
                            print("Listen the questions")
                        }else{
                            showingPaywall = true
                        }

                    }
                )
                
                HomeRow(
                    title: "Speak your answers",
                    subtitle: "Listen and speak",
                    systemImage: "waveform",
                    isPro: !purchaseManager.isPremiumUnlocked,
                    action: {
                        if purchaseManager.isPremiumUnlocked{
                            print("Listen and speak")
                        }else{
                            showingPaywall = true
                        }

                    }
                )
            }
            
            Section("Reference") {
                
                HomeRow(
                    title: "All Civics Questions",
                    subtitle: "\(appState.questionVersion == .v2008 ? "100 Questions" : "125 Questions") · Read and memorize",
                    systemImage: "book.closed",
                    isPro: false,
                    action: { showAllQuestions = true }
                )
                
                HomeRow(
                    title: "Meet your representatives",
                    subtitle: "Who your reps are? · Meet and memorize",
                    systemImage: "person.2",
                    isPro: false,
                    action: { showRepsView = true }
                )
                
                HomeRow(
                    title: "Senior Questions",
                    subtitle: "65/20 Exemption · Read and memorize",
                    systemImage: "magazine",
                    isPro: false,
                    action: { print("Senior Questions") }
                )
            }
        }
        .listStyle(.insetGrouped)  
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
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
        // MARK: Reading and Writing
        .fullScreenCover(isPresented: $showReadingWriting){
            ReadingWritingView()
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
        // MARK: -- Paywall
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .environment(AppState())
            .environment(RepresentativesService())
            .environment(SpeechSynthesisService())
            .environment(PurchaseManager())
    }
}
