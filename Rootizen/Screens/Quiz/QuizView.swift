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
        
        VStack(spacing: 0) {
            
            // MARK: Header
            HStack {
                DismissBtn(
                    backgroundColor: AppColor.accentMuted,
                    shadowBorderColor: AppColor.accent
                ) {
                    onClose()
                }
                
                Spacer()
                
                HStack(spacing: 6) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(AppColor.success)
                    
                    Text("\(quizManager.score) correct")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(AppColor.secondaryText)
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(AppColor.surface)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(AppColor.border, lineWidth: 0.5)
                }
            }
            .padding(.top)
            
            // MARK: Question
            VStack(alignment: .leading, spacing: 8) {
                Text("Question")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(AppColor.info)
                    .textCase(.uppercase)
                    .tracking(0.4)
                
                Text(quizManager.currentQuestion.question)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundStyle(AppColor.primaryText)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 12)
            
            // MARK: Quiz options
            ScrollView {
                VStack(spacing: 18) {
                    ForEach(quizManager.quizOptions, id: \.self) { option in
                        QuizRow(option: option)
                    }
                }
                .padding(.top, 12)
            }
            
            // MARK: Feedback Card
            if quizManager.selectedAnswer != nil {
                if quizManager.answerResult == .isCorrect{
                    
                    AnswerFeedbackCard( isCorrect: true, correctAnswer: "")
                    
                }else{
                    AnswerFeedbackCard( isCorrect: false, correctAnswer: quizManager.currentQuestion.correctAnswer)
                }
            }
            
            
            // MARK: Action
            PrimaryButton(
                title: !quizManager.isFinished ? "Next question" : "Results",
                color: AppColor.info
            ) {
                if !quizManager.isFinished {
                    quizManager.nextQuestion()
                    if quizManager.isFinished {
                        SoundManager.shared.play(.quizComplete)
                    }
                } else {
                    path.append(.results)
                }
            }
            .padding(.vertical)
        }
        .padding()
        .background(AppColor.background)
    }
}

#Preview {
    QuizView(path: .constant([]), onClose: {})
        .environment(QuizManager(questions: q2025version))
}
