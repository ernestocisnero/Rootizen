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
                    
                    HStack(alignment: .top){
                        GameCard(
                            title: "Quiz",
                            secondTitle: "10 questions",
                            thirdTitle: "Multiple selection",
                            image: Image(systemName: "book"),
                            action: { startQuiz = true }
                        )
                        
                        GameCard(
                            title: "Flashcards",
                            secondTitle: "10 questions",
                            thirdTitle: "True / False",
                            image: Image(systemName: "bookmark"),
                            action: { print("Flashcard") }
                        )
                    }
                    .padding(.vertical,10)
                    
                    HStack(alignment: .top){
                        GameCard(
                            title: "Top 15 most difficult",
                            secondTitle: "10 questions",
                            thirdTitle: "Multiple selection",
                            image: Image(systemName: "book"),
                            action: { startQuiz = true }
                        )
                        
                        GameCard(
                            title: "Senior QUestions",
                            secondTitle: "10 questions",
                            thirdTitle: "True / False",
                            image: Image(systemName: "bookmark"),
                            action: { print("Flashcard") }
                        )
                    }
                    .padding(.vertical,10)
                    
                }
            }
        }
        //.padding()
        
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
