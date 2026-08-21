//
//  UnionifyApp.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI

@main
struct UnionifyApp: App {
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environment(appState)
        }
    }
}
