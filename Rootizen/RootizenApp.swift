//
//  RootizenApp.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

@main
struct RootizenApp: App {
    
    @State private var appState = AppState()
    @State private var userProgress = UserProgress()
    @State private var repsService = RepresentativesService()
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environment(appState)
                .environment(userProgress)
                .environment(repsService)
                
        }
    }
}
