//
//  FlashcardsManager.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI
import SwiftData

@Observable
final class FlashcardsManager: Identifiable {
    
    private(set) var flashcardsQuestions: [FlashCard] = []
    private(set) var score = 0
    private(set) var isFinished = false
    private(set) var numberOfQuestions: Int = 10
    private(set) var questionCategoryCorrectCounts: [QuestionCategory: Int] = [:]
    private(set) var questionCategoryTotalCounts: [QuestionCategory: Int] = [:]
    
    // True when the user has answered every card
    var isGameOver: Bool {
        flashcardsQuestions.isEmpty
    }
    
    init(flashcardVersionYear: [FlashCard] ){
        startFlashcardSession(flashcards: flashcardVersionYear)
    }
    
    
    func startFlashcardSession(flashcards: [FlashCard]){
        score = 0
        isFinished = false
        
        flashcardsQuestions = Array(flashcards.shuffled().prefix(numberOfQuestions)) 
    }
    
    func handleSwipe(userAnswer: Bool){
        
        guard !flashcardsQuestions.isEmpty else { return }
        
        let currentCard = flashcardsQuestions.last!
        
        questionCategoryTotalCounts[currentCard.category, default: 0] += 1
        
        if(userAnswer == flashcardsQuestions.last?.isTrue){
            questionCategoryCorrectCounts[currentCard.category, default: 0] += 1
            score += 1
        }
        
        flashcardsQuestions.removeLast()
        
        //If the game is now over, persist the result
        if isGameOver {
            isFinished = true
        }
    }
    
    
    
}
