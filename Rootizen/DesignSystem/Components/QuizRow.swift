//
//  QuizRow.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI


struct QuizRow: View {
    
    @State private var shake = false
    
    //var answer: Answer
    var isCorrect: Bool = true
    
    var isSelected: Bool = true
    
    var shouldShake: Bool = true
    
    
    // Color variations variables
    var colorSuccess = AppColor.success
    var colorError = AppColor.error
    
    var body: some View {
        
        HStack(spacing: 20){
            
            Text("answer.text")
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
//        .onTapGesture {
//            quizManager.selectAnswer(answer.text)
//        }
    }
}

#Preview {
    QuizRow()
        .padding()
}
