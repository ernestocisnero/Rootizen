//
//  QuizView.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct QuizView: View {
    
    @Binding var path: [QuizDestination]
    @Environment(QuizManager.self) private var quizManager
    
    let onClose: () -> Void
    
    
    var body: some View {
        VStack {
            Text("Quiz View")
            Text("Question")
            Text("\(quizManager.questions[0].question)")
            Text("Score")
            Text("\(quizManager.score)")
            
            Button("Navigate to result"){
                path.append(.results)
            }
            
            Button("Close"){
                onClose()
            }
        }
    }
}

#Preview {
    QuizView(path: .constant([]), onClose: {})
        .environment(QuizManager(questions: q2025version))
}
