//
//  QuizFlowView.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

enum QuizDestination: Hashable {
    case results
}


struct QuizFlowView: View {
    @Binding var isPresented: Bool
    @Environment(QuizManager.self) private var quizManager
    @State private var path: [QuizDestination] = []
    let questionVersion: QuestionVersion
    
    var body: some View {
        NavigationStack(path: $path) {
            QuizView(
                path: $path,
                onClose: { isPresented = false }
            )
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
        .environment(QuizManager(questions: questionVersion == .v2008 ? q2008version : q2025version))
    }
}



#Preview {
    QuizFlowView(isPresented: .constant(true), questionVersion: .v2025)
        .environment(QuizManager(questions: q2008version))
}
