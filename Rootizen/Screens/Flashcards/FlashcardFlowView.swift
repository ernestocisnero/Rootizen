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
    
    @Binding var isPresented: Bool
    @State private var path: [FlashDestination] = []
    
    let questionVersion: QuestionVersion
    
    init(
        isPresented: Binding<Bool>,
        questionVersion: QuestionVersion
    ){
        self._isPresented = isPresented
        self.questionVersion = questionVersion
        
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            FlashcardsView(
                path: $path,
                onClose: { isPresented = false } 
            )
            //.environment(quizManager)
            .navigationDestination(for: FlashDestination.self) { destination in
                switch destination {
                case .results:
                    FlashcardsResults(
                        //score: quizManager.score, total: 10,
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
    FlashcardFlowView(isPresented: .constant(true), questionVersion: .v2025)
}
