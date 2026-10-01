//
//  HaveYouEverQuestionsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//

import SwiftUI

struct HaveYouEverQuestionsView: View {
    @Environment(\.dismiss) private var dismiss
 
    let questions: [HaveYouEverQuestion]
 
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 14) {
                ForEach(Array(questions.enumerated()), id: \.element.id) { index, question in
                    HaveYouEverCard(number: index + 1, question: question)
                }
            }
            .padding()
        }
        .navigationTitle("Have You Ever")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationStack {
        HaveYouEverQuestionsView(questions: [
            HaveYouEverQuestion(
                id: UUID(),
                text: LocalizedText(
                    english: "Have you EVER claimed to be a U.S. citizen (in writing or any other way)?",
                    spanish: "¿ALGUNA VEZ ha afirmado ser ciudadano de los Estados Unidos (por escrito o de cualquier otra manera)?"
                )
            ),
            HaveYouEverQuestion(
                id: UUID(),
                text: LocalizedText(
                    english: "Have you EVER registered to vote in any Federal, state, or local election in the United States?",
                    spanish: "¿ALGUNA VEZ se ha registrado para votar en alguna elección Federal, estatal o local en los Estados Unidos?"
                )
            )
        ])
    }
}
