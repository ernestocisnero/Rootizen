//
//  QuizRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI


struct QuizRow: View {
    @Environment(QuizManager.self) private var quizManager
    @State private var shake = false
    
    var option: String
    
    var isSelected: Bool {
        quizManager.selectedAnswer == option
    }
    
    var isCorrect: Bool {
        isSelected && quizManager.answerResult == .isCorrect
    }
    
    var shouldShake: Bool {
        isSelected && quizManager.answerResult == .isWrong
    }
    
    
    // Color variations variables
    var colorSuccess = AppColor.success
    var colorError = AppColor.error
    
    var body: some View {
        
        HStack(spacing: 20){
            
            Text(option)
                .questionRow()
            
            Spacer()
            
            if isSelected {
                Image(systemName: isCorrect ? "checkmark.circle.fill": "x.circle.fill")
                    .foregroundStyle( isCorrect ? colorSuccess: colorError )
                    .fontWeight(.bold)
            }else{
                Image(systemName: "circle")
                    .foregroundStyle(AppColor.secondaryText)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundStyle(colorSuccess)
        .background(AppColor.background)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.black.opacity(0.08), lineWidth: 1)
        }
        .shadow(color: isSelected ? (isCorrect ? colorSuccess: colorError): .gray, radius: 0, x: 0.2, y: 5)
        .animation(.easeInOut(duration: 0.08).repeatCount(4, autoreverses: true), value: shouldShake)
        .sensoryFeedback(isCorrect ? .success: .error, trigger: isSelected)
        .onTapGesture {
            quizManager.selectAnswer(option)
        }
    }
}

#Preview {
    QuizRow(option: "Florida")
        .padding(.vertical)
        .environment(QuizManager(questions: q2025version))
}
