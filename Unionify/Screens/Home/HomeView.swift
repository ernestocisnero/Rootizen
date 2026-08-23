//
//  HomeView.swift
//  Unionify
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
                    
                    StreakCard(streakCount: 4, userName: "Ernesto")
                    
                    VStack(alignment: .leading, spacing: 0){
                        
                        Text("Practice")
                            .primaryTitle()
                        
                        HStack(alignment: .top){
                            GameCard(
                                title: "Quiz",
                                secondTitle: "10 questions",
                                thirdTitle: "Multiple selection",
                                image: Image(systemName: "book.closed.fill"),
                                action: { startQuiz = true }
                            )
                            
                            GameCard(
                                title: "Flashcards",
                                secondTitle: "10 questions",
                                thirdTitle: "True / False",
                                image: Image(systemName: "bolt.fill"),
                                action: { print("Flashcard") }
                            )
                        }
                        .padding(.vertical,10)
                        
                    }
                    
                }
            }
            
            #if DEBUG
            
            Button("Reset onboarding"){
                appState.resetOnboarding()
            }
            #endif
        }
        .padding()
        
        .fullScreenCover(isPresented: $startQuiz){
            QuizFlowView(isPresented: $startQuiz, questionVersion: appState.questionVersion)
        }
    }
}

#Preview {
    HomeView()
        .environment(AppState())
}
