//
//  HomeView.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct HomeView: View {
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
                            image: Image(systemName: "book.closed.fill"),
                            action: { print("Quiz") }
                        )
                        
                        GameCard(
                            title: "Flashcards",
                            secondTitle: "10 questions",
                            thirdTitle: "True / False",
                            image: Image(systemName: "book.closed.fill"),
                            action: { print("Flashcard") }
                        )
                    }
                    .padding(.vertical,10)
                    
                    Text("Flashcard Card")
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
        .environment(AppState())
}
