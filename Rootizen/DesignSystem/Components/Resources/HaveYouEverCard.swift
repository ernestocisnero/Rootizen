//
//  HaveYouEverCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//

import SwiftUI

struct HaveYouEverCard: View {
    let number: Int
    let question: HaveYouEverQuestion
 
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("N-400 · Question \(number)")
                .label()
 
            Text(question.text.english)
                .primaryTitle()
 
            Divider()
 
            Text(question.text.spanish)
                .secondaryTitle()
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .accessibilityElement(children: .combine)
        .accessibilityLabel("Question \(number): \(question.text.english)")
    }
}

#Preview {
    HaveYouEverCard(number: 1, question: HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER claimed to be a U.S. citizen (in writing or any other way)?",
            spanish: "¿ALGUNA VEZ ha afirmado ser ciudadano de los Estados Unidos (por escrito o de cualquier otra manera)?"
        )
    ))
}
