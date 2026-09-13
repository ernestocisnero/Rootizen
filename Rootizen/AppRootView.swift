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
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ResourcesView()
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
        .environment(UserProgress())
}
