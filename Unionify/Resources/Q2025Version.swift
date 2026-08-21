//
//  Q2025Version.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

let q2025version: [Question] = [
    Question(
        id: UUID(),
        question: "What is the supreme law of the land?",
        correctAnswer: "The Constitution",
        incorrectAnswers: [
            "The Declaration of Independence",
            "The Bill of Rights",
            "The Articles of Confederation"
        ]
    ),

    Question(
        id: UUID(),
        question: "What does the Constitution do?",
        correctAnswer: "Sets up the government",
        incorrectAnswers: [
            "Declares war",
            "Elects the president",
            "Creates political parties"
        ]
    )
]
