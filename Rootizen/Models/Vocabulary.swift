//
//  Vocabulary.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//
//  Source: USCIS Reading and Writing Vocabulary lists for the
//  Naturalization Test (rev. 08/08). U.S. government work — public domain.
//

import Foundation

struct VocabularyCategory: Identifiable {
    let id = UUID()
    let name: String
    let words: [String]
}

enum VocabularyType: String, CaseIterable, Identifiable {
    case reading = "Reading"
    case writing = "Writing"

    var id: String { rawValue }
}

enum Vocabulary {
    static let reading: [VocabularyCategory] = [
        VocabularyCategory(name: "People", words: [
            "Abraham Lincoln", "George Washington"
        ]),
        VocabularyCategory(name: "Civics", words: [
            "American flag", "Bill of Rights", "capital", "citizen", "city",
            "Congress", "country", "Father of Our Country", "government",
            "President", "right", "Senators", "state/states", "White House"
        ]),
        VocabularyCategory(name: "Places", words: [
            "America", "United States", "U.S."
        ]),
        VocabularyCategory(name: "Holidays", words: [
            "Presidents' Day", "Memorial Day", "Flag Day", "Independence Day",
            "Labor Day", "Columbus Day", "Thanksgiving"
        ]),
        VocabularyCategory(name: "Question Words", words: [
            "How", "What", "When", "Where", "Who", "Why"
        ]),
        VocabularyCategory(name: "Verbs", words: [
            "can", "come", "do/does", "elects", "have/has", "is/are/was/be",
            "lives/lived", "meet", "name", "pay", "vote", "want"
        ]),
        VocabularyCategory(name: "Other (Function)", words: [
            "a", "for", "here", "in", "of", "on", "the", "to", "we"
        ]),
        VocabularyCategory(name: "Other (Content)", words: [
            "colors", "dollar bill", "first", "largest", "many", "most",
            "north", "one", "people", "second", "south"
        ])
    ]

    static let writing: [VocabularyCategory] = [
        VocabularyCategory(name: "People", words: [
            "Adams", "Lincoln", "Washington"
        ]),
        VocabularyCategory(name: "Civics", words: [
            "American Indians", "capital", "citizens", "Civil War", "Congress",
            "Father of Our Country", "flag", "free", "freedom of speech",
            "President", "right", "Senators", "state/states", "White House"
        ]),
        VocabularyCategory(name: "Places", words: [
            "Alaska", "California", "Canada", "Delaware", "Mexico",
            "New York City", "New York", "United States", "Washington",
            "Washington, D.C."
        ]),
        VocabularyCategory(name: "Months", words: [
            "February", "May", "June", "July", "September", "October", "November"
        ]),
        VocabularyCategory(name: "Holidays", words: [
            "Presidents' Day", "Memorial Day", "Flag Day", "Independence Day",
            "Labor Day", "Columbus Day", "Thanksgiving"
        ]),
        VocabularyCategory(name: "Verbs", words: [
            "can", "come", "elect", "have/has", "is/was/be", "lives/lived",
            "meets", "pay", "vote", "want"
        ]),
        VocabularyCategory(name: "Other (Function)", words: [
            "and", "during", "for", "here", "in", "of", "on", "the", "to", "we"
        ]),
        VocabularyCategory(name: "Other (Content)", words: [
            "blue", "dollar bill", "fifty/50", "first", "largest", "most",
            "north", "one", "one hundred/100", "people", "red", "second",
            "south", "taxes", "white"
        ])
    ]

    static func categories(for type: VocabularyType) -> [VocabularyCategory] {
        type == .reading ? reading : writing
    }
}
