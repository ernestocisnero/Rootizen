//
//  Question.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct Question: Identifiable {
    let id: UUID
    let category: String
    let question: LocalizedText
    let answers: [Answer]
    let isSenior: Bool?
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
