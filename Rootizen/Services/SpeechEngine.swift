//
//  SpeechEngine.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

@MainActor
protocol SpeechEngine: AnyObject {
    func speak(_ text: String, language: String, leadingPause: TimeInterval,
               onFinished: @escaping @MainActor () -> Void)
    func pause()
    func resume()
    func stop()
}

struct AudioItem: Identifiable {
    let id: UUID
    let question: String
    let answer: String
}

extension AudioItem {
    static let samples: [AudioItem] = [
        AudioItem(id: UUID(),
                  question: "What is the supreme law of the land?",
                  answer: "The Constitution."),
        AudioItem(id: UUID(),
                  question: "How many U.S. senators are there?",
                  answer: "One hundred."),
        AudioItem(id: UUID(),
                  question: "How long is a term for a U.S. senator?",
                  answer: "Six years."),
        AudioItem(id: UUID(),
                  question: "What is the capital of the United States?",
                  answer: "Washington, D.C."),
        AudioItem(id: UUID(),
                  question: "Who wrote the Declaration of Independence?",
                  answer: "Thomas Jefferson.")
    ]
}

enum PlaybackState { case idle, playing, paused }
enum Part { case question, answer }
