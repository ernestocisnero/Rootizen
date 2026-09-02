//
//  QuizFlowView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

enum QuizDestination: Hashable {
    case results
}


struct QuizFlowView: View {
    @Binding var isPresented: Bool
    @State private var path: [QuizDestination] = []
    @State private var quizManager: QuizManager
    
    let questionVersion: QuestionVersion
    
    init(
        isPresented: Binding<Bool>,
        questionVersion: QuestionVersion
    ){
        self._isPresented = isPresented
        self.questionVersion = questionVersion
        
        let questions = questionVersion == .v2008
        ? q2008version
        : q2025version
        
        self._quizManager = State(
            initialValue: QuizManager(questions: questions)
        )
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            QuizView(
                path: $path,
                onClose: { isPresented = false }
            )
            .environment(quizManager)
            .navigationDestination(for: QuizDestination.self) { destination in
                switch destination {
                case .results:
                    QuizResults(
                        onRestart: { path.removeLast(path.count) },
                        onClose: { isPresented = false }
                    )
                    .navigationBarBackButtonHidden(true)
                    .interactiveDismissDisabled(true)
                }
            }
        }
        
        .padding()
    }
}



#Preview {
    QuizFlowView(isPresented: .constant(true), questionVersion: .v2025)
}
