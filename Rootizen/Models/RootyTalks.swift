//
//  RootyTalks.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/13/26.
//

import SwiftUI

enum RootyTalksCases {
    case presentation
    case testVersionSelection
    case quizPasses
    case quizFailed
}

struct Phrase {
    let rootyTalksCases: RootyTalksCases
    let phrase: [String]

    init(rootyTalksCases: RootyTalksCases) {
        self.rootyTalksCases = rootyTalksCases
        switch rootyTalksCases {
        case .presentation:
            self.phrase = ["Hi, I'm Rooty", "Choose a language"]
        case .testVersionSelection:
            self.phrase = ["Choose your test version"]
        case .quizPasses:
            self.phrase = ["Great job! You passed the quiz."]
        case .quizFailed:
            self.phrase = ["Don't worry, try the quiz again."]
        }
    }
}
