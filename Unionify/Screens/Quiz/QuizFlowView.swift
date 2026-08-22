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
    @State private var path: [QuizDestination] = []
    
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
    }
}



#Preview {
    QuizFlowView(isPresented: .constant(true))
}
