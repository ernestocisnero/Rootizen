//
//  WordMatchEvaluator.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
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
        let targetWords = normalize(target)
        let candidateWords = normalize(candidate)

        let matchedIndices = longestCommonSubsequenceIndices(targetWords, candidateWords)

        let results = targetWords.enumerated().map { index, word in
            WordMatchResult(word: word, isCorrect: matchedIndices.contains(index))
        }

        let accuracy = targetWords.isEmpty
            ? 0
            : Double(matchedIndices.count) / Double(targetWords.count)

        return (results, accuracy)
    }

    private static func normalize(_ sentence: String) -> [String] {
        sentence
            .lowercased()
            .components(separatedBy: CharacterSet.alphanumerics.inverted)
            .filter { !$0.isEmpty }
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
