//
//  AudioItemQuestion.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import Foundation

enum AudioLanguage {
    case english, spanish
    var voiceCode: String { self == .english ? "en-US" : "es-MX" }
}

extension AudioItem {

    /// Every question in the selected year's bank, in the selected language.
    static func items(for version: QuestionVersion, language: AudioLanguage) -> [AudioItem] {
        version.ListenQuestions.compactMap { AudioItem(question: $0, language: language) }
    }

    /// Fails (returns nil) only if a question has no correct answer marked.
    init?(question: Question, language: AudioLanguage) {
        guard let correct = question.answers.first(where: \.isCorrect) else {
            #if DEBUG
            print("⚠️ No correct answer marked for:", question.question.english)
            #endif
            return nil
        }

        self.init(id: question.id,
                  question: question.question.text(in: language).spokenForm,
                  answer: correct.text.text(in: language).spokenForm)
    }
}

private extension LocalizedText {
    func text(in language: AudioLanguage) -> String {
        language == .english ? english : spanish
    }
}

private extension String {
    /// "Ten (10)" would be read as "Ten ten", so drop number-only brackets.
    /// Other brackets like "(U.S.) Congress" keep their words and lose the parentheses.
    var spokenForm: String {
        self
            .replacingOccurrences(of: #"\s*\(\d+\)"#, with: "", options: .regularExpression)
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
    }
}
