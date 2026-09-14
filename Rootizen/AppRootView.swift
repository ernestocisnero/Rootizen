//
//  RootizenApp.swift
//  RootizenApp
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

struct AppRootView: View {
    
    @Environment(AppState.self) private var appState
    @State private var showingSplash =  true
    
    
    var body: some View {
        Group{
            if showingSplash{
                SplashView(){
                    withAnimation(.easeInOut(duration: 0.4)){
                        showingSplash = false
                    }
                }
                .transition(.opacity)
            }else if appState.isOnboardingComplete{
                MainTabView()
                    .padding(.horizontal,16)
                    .transition(.opacity)
            }else{
                OnboardingView()
                    .padding(.horizontal, 16)
                    .transition(.opacity)
            }
        }
        
    }
}

//MARK: --- Home Tab View

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            ResourcesView()
                .tabItem {
                    Label("Resources", systemImage: "book")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(2)
        }
        .tint(AppColor.success)
        .sensoryFeedback(.selection, trigger: selectedTab)
    }
}


//MARK: -- Previews
#Preview {
    AppRootView()
        .environment(AppState())
        .environment(UserProgress())
}
