//
//  ContentView.swift
//  Unionify
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
        }else{
            OnboardingView()
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
                    Label("Learn", systemImage: "book")
                }
            
            ProfileView()
                .tabItem {
                    Label("Me", systemImage: "person.circle")
                }
        }
        .tint(AppColor.error)
        
    }
}


//MARK: -- Previews
#Preview {
    AppRootView()
        .environment(AppState())
        .environment(QuizManager(questions: q2025version))
}
