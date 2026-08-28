//
//  RootizenApp.swift
//  RootizenApp
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct AppRootView: View {
    @Environment(AppState.self) private var appState
    @Environment(QuizManager.self) private var quizManager
    
    var body: some View {
        if appState.isOnboardingComplete{
            MainTabView()
                .padding(.horizontal)
        }else{
            OnboardingView()
                .padding(.horizontal)
        }
    }
}

//MARK: --- Home Tab View

struct MainTabView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            LearnView()
                .tabItem {
                    Label("Resources", systemImage: "book")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(AppColor.success)
        
    }
}


//MARK: -- Previews
#Preview {
    AppRootView()
        .environment(AppState())
        .environment(QuizManager(questions: q2025version))
}
