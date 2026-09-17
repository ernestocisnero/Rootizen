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

enum AppLanguage: String {
    case english = "en"
    case spanish = "es"
}

@Observable
final class AppState {
    
    // MARK: - Persisted State
    
    private(set) var isOnboardingComplete: Bool
    private(set) var appLanguage: AppLanguage
    private(set) var questionVersion: QuestionVersion
    private(set) var zipCode: String
    
    // MARK: - Initialization
    
    init() {
        let defaults = UserDefaults.standard
        
        
        isOnboardingComplete = defaults.bool(
            forKey: "isOnboardingComplete"
        )
        
        let savedAppLanguage = defaults.string(
            forKey: "appLanguage"
        )
        
        appLanguage = AppLanguage(rawValue: savedAppLanguage ?? "en") ?? .english
        
        
        let savedVersion = defaults.string(
            forKey: "questionVersion"
        )
        
        questionVersion =
        QuestionVersion(rawValue: savedVersion ?? "")
        ?? .v2025
        
         zipCode = defaults.string(forKey: "zipCode") ?? "33991"
        
    }
    
    // MARK: - Methods
    
    func completeOnboarding() {
        isOnboardingComplete = true
        
        UserDefaults.standard.set(
            true,
            forKey: "isOnboardingComplete"
        )
    }
    
    func setLanguage(_ appLang: AppLanguage){
        appLanguage = appLang
        UserDefaults.standard.set(appLang.rawValue, forKey: "appLanguage")
    }
    
    func setQuestionVersion(_ version: QuestionVersion) {
        questionVersion = version
        
        UserDefaults.standard.set(
            version.rawValue,
            forKey: "questionVersion"
        )
    }
    
    func setZipCode(_ zip: String){
        zipCode = zip
        UserDefaults.standard.set(zip, forKey: "zipCode")
    }
    
    
    
    // MARK: - This is for development only. DELETE BEFORE LAUNCH
#if DEBUG
    func resetOnboarding() {
        isOnboardingComplete = false
        UserDefaults.standard.set(false, forKey: "isOnboardingComplete")
    }
#endif // DEBUG
    
    
   
}
