//
//  FlashcardsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI
import SwiftData

struct FlashcardsView: View {
    @Binding var path: [FlashDestination]
    @Environment(FlashcardsManager.self) private var fcManager
    @Environment(AppState.self) private var appState
    
    let onClose: () -> Void
    
    var body: some View {
        
        // MARK: Header
        VStack {
            
            HStack(spacing: 12){
                
                Text("Cards remaining: \(fcManager.flashcardsQuestions.count)")
                    .secondaryTitle(AppColor.info)
                    .textCase(.uppercase)
                    .tracking(0.4)
                
                Spacer()
                
                DismissBtn(
                    backgroundColor: AppColor.info,
                    shadowBorderColor: AppColor.secondaryBackground
                ) {
                    onClose()
                }
                
            }
            
            Spacer()
            
            CardStack(cards: fcManager.flashcardsQuestions)
                .onChange(of: fcManager.isFinished) { _, newValue in
                    if newValue {
                        appState.recordFlashcardResult(score: fcManager.score)
                        path.append(.results)
                    }
                }
            
            Spacer()
            
            Text("Swipe left to FALSE or Swipe right to TRUE")
                .secondaryTitle()
        }
        .padding()
    }
}

#Preview {
    FlashcardsView(path: .constant([]), onClose: {})
        .environment(FlashcardsManager(flashcardVersionYear: flashCards2025))
        .environment(AppState())
    
}
