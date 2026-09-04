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

    private var stateBorderColor: Color {
        guard isSelected else { return AppColor.border }
        return isCorrect ? colorSuccess : colorError
    }

    private var stateBackgroundColor: Color {
        guard isSelected else { return AppColor.surface }
        return isCorrect ? AppColor.successMuted : AppColor.errorMuted
    }

    var body: some View {

        HStack(spacing: 20){

            Text(option)
                .bodyText()
                .foregroundStyle(AppColor.primaryText)

            Spacer()

            if isSelected {
                Image(systemName: isCorrect ? "checkmark.circle.fill": "x.circle.fill")
                    .foregroundStyle( isCorrect ? colorSuccess: colorError )
                    .fontWeight(.bold)
            }else{
                Image(systemName: "circle")
                    .foregroundStyle(AppColor.thirdText)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(stateBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(stateBorderColor, lineWidth: isSelected ? 1.5 : 0.5)
        }
        .animation(.easeInOut(duration: 0.08).repeatCount(4, autoreverses: true), value: shouldShake)
        .sensoryFeedback(isCorrect ? .success: .error, trigger: isSelected)
        .onChange(of: isSelected) { _, newValue in
            guard newValue else { return }
            SoundManager.shared.play(isCorrect ? .correct : .incorrect)
        }
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
