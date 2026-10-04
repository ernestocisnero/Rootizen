//
//  WordMatchEvaluator.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//
//  Pure logic, no Apple frameworks — compares a candidate sentence
//  (typed, or transcribed from speech) against a target sentence,
//  word by word. Shared by both Reading and Writing practice.
//

import Foundation

struct WordMatchResult: Identifiable {
    let id = UUID()
    let word: String
    let isCorrect: Bool
}

enum WordMatchEvaluator {

    /// Returns each target word marked correct/incorrect, plus an overall
    /// accuracy (0...1). Uses a word-level LCS alignment so one missing or
    /// extra word doesn't cascade and mark every later word wrong too —
    /// a plain index-by-index comparison would do exactly that.
    static func evaluate(target: String, candidate: String) -> (results: [WordMatchResult], accuracy: Double) {
        let targetTokens = tokenize(target)
        let candidateKeys = tokenize(candidate).map(\.key)

        let matchedIndices = longestCommonSubsequenceIndices(
            targetTokens.map(\.key), candidateKeys
        )

        let results = targetTokens.enumerated().map { index, token in
            WordMatchResult(word: token.display, isCorrect: matchedIndices.contains(index))
        }

        let accuracy = targetTokens.isEmpty
            ? 0
            : Double(matchedIndices.count) / Double(targetTokens.count)

        return (results, accuracy)
    }

    /// Splits on WHITESPACE only — that's the real word boundary. Within
    /// each word, punctuation (periods, commas, etc.) is stripped rather
    /// than treated as a split point, so "D.C." stays one word ("dc"),
    /// matching "DC" or "d.c" typed without the real abbreviation's dots.
    /// `display` keeps the original casing for the highlight chips;
    /// `key` is the lowercased form actually used for comparison.
    private static func tokenize(_ sentence: String) -> [(display: String, key: String)] {
        sentence
            .split(separator: " ")
            .compactMap { token -> (display: String, key: String)? in
                let display = String(token).filter { $0.isLetter || $0.isNumber }
                guard !display.isEmpty else { return nil }
                return (display, display.lowercased())
            }
    }

    /// Standard O(n·m) LCS dynamic-programming table, backtracked to the
    /// set of `a` indices that are part of the longest common subsequence.
    private static func longestCommonSubsequenceIndices(_ a: [String], _ b: [String]) -> Set<Int> {
        let n = a.count, m = b.count
        guard n > 0, m > 0 else { return [] }

        var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)

        for i in 1...n {
            for j in 1...m {
                dp[i][j] = a[i - 1] == b[j - 1]
                    ? dp[i - 1][j - 1] + 1
                    : max(dp[i - 1][j], dp[i][j - 1])
            }
        }

        var matched = Set<Int>()
        var i = n, j = m
        while i > 0 && j > 0 {
            if a[i - 1] == b[j - 1] {
                matched.insert(i - 1)
                i -= 1
                j -= 1
            } else if dp[i - 1][j] >= dp[i][j - 1] {
                i -= 1
            } else {
                j -= 1
            }
        }
        return matched
    }
}
