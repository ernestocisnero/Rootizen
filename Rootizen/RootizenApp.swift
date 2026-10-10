//
//  RootizenApp.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/20/26.
//

import SwiftUI
import SwiftData

@main
struct RootizenApp: App {
    
    let container: ModelContainer = {
        let schema = Schema([UserProgressModel.self])
        return try! ModelContainer(for: schema)
    }()
    
    @State private var appState = AppState()
    @State private var repsService = RepresentativesService()
    @State private var purchaseManager = PurchaseManager()
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environment(\.locale, appState.appLanguage.locale)
                .environment(appState)
                .environment(repsService)
                .environment(purchaseManager)
                .modelContainer(container)
                .task {
                    ensureProgressExists()
                }
        }
    }
    
    @MainActor
    private func ensureProgressExists() {
        let context = container.mainContext
        let descriptor = FetchDescriptor<UserProgressModel>()
        
        if let existing = try? context.fetch(descriptor).first {
            appState.loadOrCreateProgress(userProgressModel: existing)
        } else {
            let newProgress = UserProgressModel()
            context.insert(newProgress)
            appState.loadOrCreateProgress(userProgressModel: newProgress)
        }
    }
}
