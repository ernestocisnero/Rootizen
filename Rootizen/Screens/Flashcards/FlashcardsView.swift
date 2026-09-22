//
//  FlashcardsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI

struct FlashcardsView: View {
    @Binding var path: [FlashDestination]
    @Environment(FlashcardsManager.self) private var fcManager
    let onClose: () -> Void
    
    var body: some View {
        
        // MARK: Header
        VStack {
            
            HStack(spacing: 12){
                
                Text("Cards remaining: \(fcManager.flashcardsQuestions.count)")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(AppColor.secondaryText)
                
                Spacer()
                
                DismissBtn(
                    backgroundColor: AppColor.accentMuted,
                    shadowBorderColor: AppColor.accent
                ) {
                    onClose()
                }
                
            }
            
            Spacer()
            
            CardStack(cards: fcManager.flashcardsQuestions)
                .onChange(of: fcManager.isFinished) { oldValue, newValue in
                    if newValue == true{
                        path.append(.results)
                    }
                }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FlashcardsView(path: .constant([]), onClose: {})
        .environment(FlashcardsManager(flashcardVersionYear: flashCards2025))
        .environment(UserProgress())
}
