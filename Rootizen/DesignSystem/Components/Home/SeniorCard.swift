//
//  SeniorCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/11/26.
//

import SwiftUI

struct SeniorCard: View {
    let question: LocalizedText
    let correctAnswer: LocalizedText
    let category: QuestionCategory
    
    private var categoryIconName: CategoryIconName {
        switch category {
        case .principlesOfGovernment: .principlesOfGovernment
        case .principlesofAmericanDemocracy: .principlesofAmericanDemocracy
        case .systemOfGovernment: .systemOfGovernment
        case .rightsAndResponsibilities: .rightsAndResponsibilities
        case .colonialPeriod: .colonialPeriod
        case .history1800s: .history1800s
        case .recentHistory: .recentHistory
        case .geography: .geography
        case .symbols: .symbols
        case .holidays: .holidays
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label(category.rawValue, systemImage: categoryIconName.rawValue)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)

                Spacer()

                Image(systemName: "questionmark.circle.fill")
                    .foregroundStyle(.tertiary)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(question.english)
                    .primaryTitle()
                    
                
                Text(question.spanish)
                    .primaryTitle(AppColor.secondaryText)
            }
            
            Divider()
            
            HStack(alignment: .firstTextBaseline, spacing: 10){
                Image(systemName: "checkmark")
                    .primaryTitle(AppColor.success)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(correctAnswer.english)
                        .primaryTitle()
                        
                    
                    Text(correctAnswer.spanish)
                        .primaryTitle(AppColor.secondaryText)
                }
            }
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(minHeight: 200, alignment: .topLeading)
        .frame(maxWidth: .infinity)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(AppColor.border, lineWidth: 0.5)
        )
        .shadow(color: .black.opacity(0.05), radius: 8, y: 3)
    }
}

#Preview {
    SeniorCard(
        question: LocalizedText(english: "The question", spanish: "La pregunta"),
        correctAnswer: LocalizedText(english: "The answer", spanish: "La respuesta"),
        category: .principlesofAmericanDemocracy
    )
    .padding()
}
