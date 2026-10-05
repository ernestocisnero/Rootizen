//
//  UserProgress.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/29/26.
//

import SwiftData

@Model
class UserProgressModel{
    
    var totalQuizTaken: Int
    var totalFlashcardTaken: Int
    var totalCorrectQuiz: Int
    var totalCorrectFlashcard: Int
    var categoryCorrectCounts: [QuestionCategory: Int]
    var categoryTotalCounts: [QuestionCategory: Int]
    
    init(
        totalQuizTaken: Int = 0,
        totalFlashcardTaken: Int = 0,
        totalCorrectQuiz: Int = 0,
        totalCorrectFlashcard: Int = 0,
        categoryCorrectCounts: [QuestionCategory: Int] = [:],
        categoryTotalCounts: [QuestionCategory: Int] = [:]
    ){
        self.totalQuizTaken = totalQuizTaken
        self.totalFlashcardTaken = totalFlashcardTaken
        self.totalCorrectQuiz = totalCorrectQuiz
        self.totalCorrectFlashcard = totalCorrectFlashcard
        self.categoryCorrectCounts = categoryCorrectCounts
        self.categoryTotalCounts = categoryTotalCounts
    }
    
}
