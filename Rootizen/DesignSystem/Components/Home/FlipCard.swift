//
//  FlipCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/3/26.
//

import SwiftUI

struct FlipCard: View {
    let question: Question
    @State private var isFlipped = false

    var body: some View {
        ZStack {
            // Front (question)
            cardFace(text: question.question, background: AppColor.accentMuted)
              .opacity(isFlipped ? 0 : 1)

            // Back (answer)
            cardFace(text: question.correctAnswer, background: .green.opacity(0.15))
                .opacity(isFlipped ? 1 : 0)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
        }
        .rotation3DEffect(
            .degrees(isFlipped ? 180 : 0),
            axis: (x: 0, y: 1, z: 0)
        )
        .animation(.easeInOut(duration: 0.5), value: isFlipped)
        .onTapGesture {
            isFlipped.toggle()
        }
    }

    private func cardFace(text: String, background: Color) -> some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(background)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay(
                Text(text)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                    
            )
            .frame(height: 180)
    }
}

#Preview {
    FlipCard(question: Question(
        id: UUID(),
        question: "What is the form of government of the United States?",
        correctAnswer: "Republic",
        incorrectAnswers: [
            "Monarchy",
            "Oligarchy",
            "Theocracy"
        ],
        isSenior: false))
}
