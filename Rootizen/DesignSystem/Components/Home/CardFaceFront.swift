//
//  CardFaceLayout.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/8/26.
//

import SwiftUI

struct CardFaceFront: View {
    let question: LocalizedText
    let category: QuestionCategory
    let background: Color
    
    private var iconName: String {
        switch category {
        case .principlesOfGovernment:
            return "building.columns"
        case .principlesofAmericanDemocracy:
            return "person.2"
        case .colonialPeriod:
            return "scroll"
        case .history1800s:
            return "clock"
        case .rightsAndResponsibilities:
            return "checklist"
        case .systemOfGovernment:
            return "building.columns.circle"
        case .holidays:
            return "calendar"
        case .symbols:
            return "flag"
        case .recentHistory:
            return ""
        case .geography:
            return "globe.americas"
        }
    }
    
    var body: some View {
        
        HStack{
            Image(systemName: iconName)
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            VStack(alignment: .leading){
                Spacer()
                Text(question.english)
                Divider()
                Text(question.spanish)
                Spacer()
                HStack{
                    Spacer()
                    Text(category.rawValue)
                        .label()
                }
            }
            .bodyText()
            .padding()
            .multilineTextAlignment(.leading)
        }
        .frame(minHeight: 200)
        .background(background, in: RoundedRectangle(cornerRadius: 16))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        
    }
}

#Preview {
    CardFaceFront(question: LocalizedText(english: "The question", spanish: "La pregunta"), category: .principlesofAmericanDemocracy, background: AppColor.neutralMuted)
}
