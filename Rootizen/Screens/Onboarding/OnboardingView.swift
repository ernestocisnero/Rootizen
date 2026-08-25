//
//  OnboardingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        Text("Onboarding View")
        
        Button("Finish Onboarding"){
            appState.completeOnboarding()
        }
    }
}

#Preview {
    OnboardingView()
        .environment(AppState())
}
