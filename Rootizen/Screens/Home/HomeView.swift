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
                        action: { startQuiz = true }
                    )
                    
                    GameCard(
                        title: "Flashcards",
                        secondTitle: "10 questions",
                        thirdTitle: "True / False",
                        image: Image(systemName: "lanyardcard"),
                        cardType: .flashcard,
                        action: { print("Flashcard") }
                    )
                    
                    // MARK: Top 15 and Senior
                    
                    GameCard(
                        title: "Top 15 most difficult",
                        secondTitle: "15 questions",
                        thirdTitle: "Tap to reveal",
                        image: Image(systemName: "bookmark.circle"),
                        cardType: .top15,
                        action: { print("15 most difficult") }
                    )
                    
                    GameCard(
                        title: "Senior Questions",
                        secondTitle: "65/20 questions",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "magazine"),
                        cardType: .senior,
                        action: { print("Senior Questions") }
                    )
                    
                    
                    // MARK: N-400 Questions and All Civic questions.
                    
                    GameCard(
                        title: "N-400 Questions",
                        secondTitle: "Form questions",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "questionmark.folder"),
                        cardType: .n400,
                        action: { print("N-400 Questions") }
                    )
                    
                    GameCard(
                        title: "All Civics Questions",
                        secondTitle: "\(appState.questionVersion == .v2008 ? "100 Questions" : "125 Questions")",
                        thirdTitle: "Read and memorize",
                        image: Image(systemName: "book.closed"),
                        cardType: .allCivics,
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
