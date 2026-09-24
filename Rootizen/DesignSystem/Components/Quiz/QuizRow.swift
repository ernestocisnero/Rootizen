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

    var option: Answer

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
    var colorSuccess = AppColor.success.muted(0.2)
    var colorError = AppColor.error.muted(0.2)

    private var stateBorderColor: Color {
        guard isSelected else { return AppColor.border }
        return isCorrect ? colorSuccess : colorError
    }

    private var stateBackgroundColor: Color {
        guard isSelected else { return AppColor.surface }
        return isCorrect ? colorSuccess : colorError
    }

    var body: some View {

        HStack(spacing: 20){

            Text(option.text.english)
                .bodyText()
                .foregroundStyle(AppColor.primaryText)

            Spacer()

            if isSelected {
                Image(systemName: isCorrect ? "checkmark.circle.fill": "x.circle.fill")
                    .foregroundStyle( isCorrect ? AppColor.success: AppColor.error )
                    .fontWeight(.bold)
            }else{
                Image(systemName: "circle")
                    .foregroundStyle(AppColor.tertiaryText)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(stateBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(stateBorderColor, lineWidth: isSelected ? 1 : 0.5)
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
    QuizRow(option: Answer(id: UUID(), text: LocalizedText(english: "A holiday to honor people who have served in the U.S. military", spanish: "Un día festivo para honrar a las personas que han servido en las fuerzas militares de los Estados Unidos"), isCorrect: false))
        .padding(.vertical)
        .environment(QuizManager(questions: q2025version))
}
