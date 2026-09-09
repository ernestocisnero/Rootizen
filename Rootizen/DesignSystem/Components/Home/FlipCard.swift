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
    
    private var correctAnswers: LocalizedText {
        question.answers.first(where: { $0.isCorrect })?.text ?? LocalizedText(english: "", spanish: "")
    }
    
    private var questionCategory: String {
        question.category
    }

    var body: some View {
        ZStack {
            // Front (question)
            CardFaceFront(question: question.question, category: questionCategory, background: AppColor.neutralMuted)
              .opacity(isFlipped ? 0 : 1)

            // Back (answer)
            CardFaceBack(answers: correctAnswers, category: questionCategory, background: .green.opacity(0.15))
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

}

#Preview {
    FlipCard(question: Question(
        id: UUID(),
        category: "History",
        question: LocalizedText(
            english: "What is Veterans Day?",
            spanish: "¿Qué es el Día de los Veteranos?"
        ),
        answers: [
            Answer(id: UUID(), text: LocalizedText(english: "A holiday to honor people who have served in the U.S. military", spanish: "Un día festivo para honrar a las personas que han servido en las fuerzas militares de los Estados Unidos"), isCorrect: true),
            Answer(id: UUID(), text: LocalizedText(english: "A day for soldiers who died", spanish: "Un día para los soldados que murieron"), isCorrect: false),
            Answer(id: UUID(), text: LocalizedText(english: "A celebration of the Revolutionary War", spanish: "Una celebración de la Guerra Revolucionaria"), isCorrect: false),
            Answer(id: UUID(), text: LocalizedText(english: "The day the military was created", spanish: "El día en que se crearon las fuerzas militares"), isCorrect: false)
        ],
        isSenior: false
    ))
}
