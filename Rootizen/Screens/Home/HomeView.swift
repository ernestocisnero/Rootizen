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
        
        VStack(alignment: .leading, spacing: 20){
            
            ScrollView(){
                
                VStack(spacing: 20){
                    
                    // MARK: Quiz and Flash Card
                    
                    GameCard(
                        title: "Quiz",
                        secondTitle: "10 questions",
                        thirdTitle: "Multiple selection",
                        image: Image(systemName: "book"),
                        isPro: false,
                        action: { startQuiz = true }
                    )
                    
                    GameCard( 
                        title: "Flashcards",
                        secondTitle: "10 questions",
                        thirdTitle: "True / False",
                        image: Image(systemName: "lanyardcard"),
                        isPro: false,
                        action: { startFlashcard = true }
                    )
                    
                    // MARK: Representatives and Senior
                    
                    GameCard(
                        title: "Meet your representatives",
                        secondTitle: "Who your reps are?",
                        thirdTitle: "Meet and memorize",
                        image: Image(systemName: "person.2"),
                        isPro: false,
                        action: { showRepsView = true }
                    )
                    
                    GameCard(
                        title: "Senior Questions",
                        secondTitle: "65/20 Exemption",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "magazine"),
                        isPro: false,
                        action: { print("Senior Questions") }
                    )
                    
                    // MARK: Listening questions and Speaking practice questions(Mock up)
                    GameCard(
                        title: "Listen the questions",
                        secondTitle: "Audio format",
                        thirdTitle: "Listen and memorize",
                        image: Image(systemName: "headphones"),
                        isPro: true,
                        action: { print("Listen the questions") }
                    )
                    
                    GameCard(
                        title: "Speak your answers",
                        secondTitle: "Speaking format",
                        thirdTitle: "Listen and speak",
                        image: Image(systemName: "waveform"),
                        isPro: true,
                        action: { print("Listen and speak") }
                    )
                    
                    
                    // MARK: N-400 Questions and All Civic questions.
                    
                    GameCard(
                        title: "N-400 Questions",
                        secondTitle: "Form questions",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "questionmark.folder"),
                        isPro: false,
                        action: { print("N-400 Questions") }
                    )
                    
                    GameCard(
                        title: "All Civics Questions",
                        secondTitle: "\(appState.questionVersion == .v2008 ? "100 Questions" : "125 Questions")",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "book.closed"),
                        isPro: false,
                        action: { showAllQuestions = true }
                    )
                }
            }
        }
        .scrollIndicators(.hidden)
        // MARK: Quiz sheet.
        .fullScreenCover(isPresented: $startQuiz){
            QuizFlowView(isPresented: $startQuiz, questionVersion: appState.questionVersion)
        }
        // MARK: Flashcards
        .fullScreenCover(isPresented: $startFlashcard){
            FlashcardFlowView(isPresented: $startFlashcard, flashcardsVersion: appState.questionVersion)
        }
        // MARK: All Questions sheet.
        .fullScreenCover(isPresented: $showAllQuestions){
            AllQuestionsView(questionsVersion: appState.questionVersion)
        }
        // MARK: Meet Representatives sheet.
        .fullScreenCover(isPresented: $showRepsView){
            RepsFlowView() 
                .environment(appState)
                .environment(repService)
        }
    }
}

#Preview {
    HomeView()
        .environment(AppState())
        .environment(UserProgress())
        .environment(RepresentativesService())
}
