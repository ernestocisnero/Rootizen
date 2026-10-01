//
//  Question.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct Question: Identifiable {
    let id: UUID
    let category: QuestionCategory
    let question: LocalizedText
    let answers: [Answer]
    let isSenior: Bool?
}

struct HaveYouEverQuestion: Identifiable {
    let id: UUID
    let text: LocalizedText
}

struct Answer: Identifiable, Equatable {
    let id: UUID
    let text: LocalizedText
    let isCorrect: Bool
}

struct LocalizedText: Equatable {
    let english: String
    let spanish: String

}

// MARK: -- Used when Plus version, to show the missed questions as feedback
struct MissedQuestionItem: Identifiable {
    let id = UUID()
    let category: QuestionCategory
    let question: LocalizedText
    let yourAnswer: LocalizedText
    let correctAnswer: LocalizedText
}
