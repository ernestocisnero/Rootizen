//
//  UserProgress.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/29/26.
//

import SwiftData
import Foundation

@Model
class UserProgressModel{
    
    var totalQuizTaken: Int
    var totalFlashcardTaken: Int
    var totalCorrectQuiz: Int
    var totalCorrectFlashcard: Int
    var lastQuizTaken: Date
    var lastFlashcardTaken: Date
    var categoryCorrectCounts: [QuestionCategory: Int]
    var categoryTotalCounts: [QuestionCategory: Int]
    
    init(
        totalQuizTaken: Int = 0,
        totalFlashcardTaken: Int = 0,
        totalCorrectQuiz: Int = 0,
        totalCorrectFlashcard: Int = 0,
        lastQuizTaken: Date = .distantPast,
        lastFlashcardTaken: Date = .distantPast,
        categoryCorrectCounts: [QuestionCategory: Int] = [:],
        categoryTotalCounts: [QuestionCategory: Int] = [:]
    ){
        self.totalQuizTaken = totalQuizTaken
        self.totalFlashcardTaken = totalFlashcardTaken
        self.totalCorrectQuiz = totalCorrectQuiz
        self.totalCorrectFlashcard = totalCorrectFlashcard
        self.lastQuizTaken = lastQuizTaken
        self.lastFlashcardTaken = lastFlashcardTaken
        self.categoryCorrectCounts = categoryCorrectCounts
        self.categoryTotalCounts = categoryTotalCounts
    }
    
}
