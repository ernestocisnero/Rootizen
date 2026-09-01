//
//  AppState.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

enum QuestionVersion: String {
    case v2008
    case v2025
}

@Observable
final class AppState {

    // MARK: - Persisted State

    private(set) var isOnboardingComplete: Bool
    private(set) var questionVersion: QuestionVersion

    // MARK: - Initialization

    init() {
        let defaults = UserDefaults.standard
        

        isOnboardingComplete = defaults.bool(
            forKey: "isOnboardingComplete"
        )
        
        let savedVersion = defaults.string(
            forKey: "questionVersion"
        )

        questionVersion =
            QuestionVersion(rawValue: savedVersion ?? "")
            ?? .v2025
    }

    // MARK: - Methods

    func completeOnboarding() {
        isOnboardingComplete = true

        UserDefaults.standard.set(
            true,
            forKey: "isOnboardingComplete"
        )
    }
    
    // MARK: - This is for development only. DELETE BEFORE LAUNCH
    #if DEBUG
    func resetOnboarding() {
        isOnboardingComplete = false
        UserDefaults.standard.set(false, forKey: "isOnboardingComplete")
    }
    #endif


    func setQuestionVersion(_ version: QuestionVersion) {
        questionVersion = version

        UserDefaults.standard.set(
            version.rawValue,
            forKey: "questionVersion"
        )
    }
}
