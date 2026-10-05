//
//  FlashcardFlowView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI

enum FlashDestination: Hashable {
    case results
}

struct FlashcardFlowView: View {
    @Environment(AppState.self) private var appState
    @Binding var isPresented: Bool
    @State private var path: [FlashDestination] = []
    @State private var fcManager: FlashcardsManager
    
    let flashcardsVersion: QuestionVersion
    
    init(
        isPresented: Binding<Bool>,
        flashcardsVersion: QuestionVersion
    ){
        self._isPresented = isPresented
        self.flashcardsVersion = flashcardsVersion
        
        let flashcardsVersionYear = flashcardsVersion == .v2008
        ? flashCards2008
        : flashCards2025
        
        self._fcManager = State(
            initialValue: FlashcardsManager(flashcardVersionYear: flashcardsVersionYear)
        )
        
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            FlashcardsView(
                path: $path,
                onClose: { isPresented = false } 
            )
            .environment(fcManager)
            .navigationDestination(for: FlashDestination.self) { destination in 
                switch destination {
                case .results:
                    ResultsView(
                        score: fcManager.score, total: 10,
                        categoryCorrectCounts: fcManager.questionCategoryCorrectCounts,
                        categoryTotalCounts: fcManager.questionCategoryTotalCounts,
                        onClose: { isPresented = false }
                    )
                    .navigationBarBackButtonHidden(true)
                    .interactiveDismissDisabled(true)
                }
            }
        }
    }
}

#Preview {
    FlashcardFlowView(isPresented: .constant(true), flashcardsVersion: .v2025)
        .environment(AppState())
        .environment(PurchaseManager())
}
