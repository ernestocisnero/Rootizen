//
//  HomeView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct HomeView: View {
    @Environment(AppState.self) private var appState
    @State private var startQuiz: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            TopHomeBar()
            
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
                        action: { startQuiz = true }
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
                        action: { print("All Civics Questions") }
                    )
                }
            }
        }
        .scrollIndicators(.hidden)
        
        .fullScreenCover(isPresented: $startQuiz){
            QuizFlowView(isPresented: $startQuiz, questionVersion: appState.questionVersion)
        }
    }
}

#Preview {
    HomeView()
        .environment(AppState())
        .environment(QuizManager(questions: []))
}
