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
    @State private var startQuiz: Bool = false
    @State private var showAllQuestions: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            HStack(spacing: 24){

                PointsCapsule(capsuleType: .streak, points: userProgress.userStreak, textPoints: "Streak Days")
                Spacer()
                PointsCapsule(capsuleType: .xpPoints, points: userProgress.userXPoints, textPoints: "XP Points")
                
            }
            
            ScrollView(){
                
                VStack(spacing: 20){
                    
                    // MARK: Quiz and Flash Card
                    
                    GameCard(
                        title: "Quiz",
                        secondTitle: "10 questions",
                        thirdTitle: "Multiple selection",
                        image: Image(systemName: "book"),
                        cardType: .quiz,
                        isPro: false,
                        action: { startQuiz = true }
                    )
                    
                    GameCard(
                        title: "Flashcards",
                        secondTitle: "10 questions",
                        thirdTitle: "True / False",
                        image: Image(systemName: "lanyardcard"),
                        cardType: .flashcard,
                        isPro: false,
                        action: { print("Flashcard") }
                    )
                    
                    // MARK: One Nation Journey and Senior
                    
                    GameCard(
                        title: "One Nation Journey",
                        secondTitle: "11 days of history",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "globe.americas.fill"),
                        cardType: .oneNation,
                        isPro: true,
                        action: { print("One Nation Journey") }
                    )
                    
                    GameCard(
                        title: "Senior Questions",
                        secondTitle: "65/20 Exemption",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "magazine"),
                        cardType: .senior,
                        isPro: false,
                        action: { print("Senior Questions") }
                    )
                    
                    // MARK: Listening questions and Speaking practice questions(Mock up)
                    GameCard(
                        title: "Listen the questions",
                        secondTitle: "Audio format",
                        thirdTitle: "Listen and memorize",
                        image: Image(systemName: "headphones"),
                        cardType: .listenQuestions,
                        isPro: true,
                        action: { print("Listen the questions") }
                    )
                    
                    GameCard(
                        title: "Speak your answers",
                        secondTitle: "Speaking format",
                        thirdTitle: "Listen and speak",
                        image: Image(systemName: "waveform"),
                        cardType: .speakAnswers,
                        isPro: true,
                        action: { print("Listen and speak") }
                    )
                    
                    
                    // MARK: N-400 Questions and All Civic questions.
                    
                    GameCard(
                        title: "N-400 Questions",
                        secondTitle: "Form questions",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "questionmark.folder"),
                        cardType: .n400,
                        isPro: false,
                        action: { print("N-400 Questions") }
                    )
                    
                    GameCard(
                        title: "All Civics Questions",
                        secondTitle: "\(appState.questionVersion == .v2008 ? "100 Questions" : "125 Questions")",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "book.closed"),
                        cardType: .allCivics,
                        isPro: false,
                        action: { showAllQuestions = true }
                    )
                }
            }
        }
        .scrollIndicators(.hidden)
        
        .fullScreenCover(isPresented: $startQuiz){
            QuizFlowView(isPresented: $startQuiz, questionVersion: appState.questionVersion)
        }
        .fullScreenCover(isPresented: $showAllQuestions){
            AllQuestionsView(questionsVersion: appState.questionVersion)
        }
    }
}

#Preview {
    HomeView()
        .environment(AppState())
        .environment(UserProgress())
}
