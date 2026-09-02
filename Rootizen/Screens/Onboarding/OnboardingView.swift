//
//  OnboardingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @Environment(AppState.self) private var appState
    @State private var isWaving = false
    
    var body: some View {
        Text("Onboarding View")
        Text("Hi! I'm Rooty")
        
        Image("Rooty")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250)
                    .rotationEffect(.degrees(isWaving ? 3 : -3), anchor: .bottom)
                    .animation(
                        .easeInOut(duration: 2)
                        .repeatForever(autoreverses: true),
                        value: isWaving
                    )
                    .onAppear {
                        isWaving = true
                    }
        
        
        Button("Finish Onboarding"){
            appState.completeOnboarding()
        }
    }
}

#Preview {
    OnboardingView()
        .environment(AppState())
}
