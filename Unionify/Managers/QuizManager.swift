//
//  QuizSession.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

@Observable
final class QuizManager {
    
    private(set) var questions: [Question] = []
    private(set) var currentIndex = 0
    private(set) var score = 0
    private(set) var selectedAnswer: String?
    private(set) var isFinished = false
    
    init(_ questions: [Question]){
        startQuizSession(questions)
    }
    
    var currentQuestion: Question {
        questions[currentIndex]
    }
    
    func startQuizSession(_ questionsVersion: [Question]){
        //Load questions
        questions = questionsVersion
        currentIndex = 0
        score = 0
        selectedAnswer = nil
        isFinished = false
    }
    
    
    func selectAnswer(_ answer: String) {
        guard selectedAnswer == nil else { return }
        
        selectedAnswer = answer
        
        if answer == currentQuestion.correctAnswer {
            score += 1
        }
    }
    
    func nextQuestion() {
        guard selectedAnswer != nil else { return }
        
        if currentIndex + 1 < questions.count {
            currentIndex += 1
            selectedAnswer = nil
        } else {
            isFinished = true
        }
    }
}
