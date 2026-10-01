//
//  PracticeSentences.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//
//  Sample sentences built using only words from the official USCIS
//  reading/writing vocabulary lists (see Vocabulary.swift) — same
//  constraint the real test uses. Reading sentences may be questions
//  (the reading vocab includes question words); writing sentences are
//  always declarative, matching the real test's dictation format.
//

import Foundation

enum PracticeSentences {
    static let reading: [String] = [
        "George Washington is the Father of Our Country.",
        "The President lives in the White House.",
        "The citizen can vote.",
        "Who is the President?",
        "What is the capital of the United States?",
        "Congress has the right to vote.",
        "We want a government for the people.",
        "People come here.",
        "Abraham Lincoln is a President.",
        "When does the citizen vote?",
        "Why do we have a government?"
    ]

    static let writing: [String] = [
        "Washington is the first President.",
        "Citizens have the right to vote.",
        "Congress meets in Washington, D.C.",
        "The flag is red, white, and blue.",
        "People pay taxes.",
        "Lincoln was the President during the Civil War.",
        "We elect the President.",
        "New York is in the United States.",
        "Adams was the second President.",
        "Citizens come to the White House."
    ]
}
