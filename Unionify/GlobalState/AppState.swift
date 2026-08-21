//
//  AppState.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

@Observable
final class AppState {
    
    private(set) var isOnboardingComplete = true
    private(set) var userName = "John Doe"
    
    
    // MARK: --- Methods
    
    func completeOnboarding() {
           isOnboardingComplete = true
       }
    
    func saveUserName( userNameOnboarding: String ){
        userName = userNameOnboarding
    }
    
    
}
