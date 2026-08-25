//
//  Question.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct Question: Identifiable {
    let id: UUID
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
    //let isSenior: Bool?
}
