//
//  QuizSession.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

enum AnswerResult {
    case isCorrect
    case isWrong
}

@Observable
final class QuizManager {
    
    private(set) var questions: [Question] = []
    private(set) var currentIndex = 0
    private(set) var score = 0
    private(set) var selectedAnswer: String?
    private(set) var isFinished = false
    private(set) var answerResult: AnswerResult?
    
    init(questions: [Question]){
        startQuizSession(questionsVersion: questions)
    }
    
    var currentQuestion: Question {
        questions[currentIndex]
    }
    
    var quizOptions: [String]{
        questions[currentIndex].incorrectAnswers + [questions[currentIndex].correctAnswer]
    }
    
    func startQuizSession(questionsVersion: [Question]){
        //Load questions
        questions = Array(questionsVersion.shuffled().prefix(10)) //load questions here
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
            answerResult = .isCorrect
        }else{
            answerResult = .isWrong
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
