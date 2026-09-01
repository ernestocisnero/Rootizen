//
//  QuizView.swift
//  Rootizen
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
            HStack{
                Button("Close"){
                    onClose()
                }
                Spacer()
                Text("Correct answers: \(quizManager.score)")
            }
            
            Text("Question:")
            Text("\(quizManager.currentQuestion.question)")
            
            // MARK: Quiz options
            
            Spacer()
            
            ForEach(quizManager.quizOptions, id: \.self){ option in
                QuizRow(option: option)
                    .padding(.vertical)
            }
            
            Spacer()
            
            Button{
                if !quizManager.isFinished{
                    quizManager.nextQuestion()
                }
                else{
                    path.append(.results)
                }
            }label:{
                Text(!quizManager.isFinished ? "Next question" : "Results")
            }
            
            
        }
        
    }
}

#Preview {
    QuizView(path: .constant([]), onClose: {})
        .environment(QuizManager(questions: q2025version))
}
