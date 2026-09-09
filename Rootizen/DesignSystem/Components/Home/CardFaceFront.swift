//
//  CardFaceLayout.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/8/26.
//

import SwiftUI

struct CardFaceFront: View {
    let question: LocalizedText
    let category: String
    let background: Color
    
    private var iconName: String {
        switch category {
        case "Principles of American Government":
            return "building.columns"
        case "Principles of American Democracy":
            return "person.3.sequence"
        case "Colonial Period and Independence":
            return "scroll"
        case "1800s History":
            return "clock"
        case "Rights and Responsibilities":
            return "checklist"
        case "System of Government":
            return "building.columns.circle"
        case "Holidays":
            return "calendar"
        case "Symbols":
            return "flag"
        case "Recent American History":
            return ""
        case "Geography":
            return "globe.americas"
        default:
            return "building.columns"
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
                    Text(category)
                        .label()
                }
            }
            .primaryTitle()
            .padding()
            .multilineTextAlignment(.leading)
        }
        .frame(minHeight: 200)
        .background(background, in: RoundedRectangle(cornerRadius: 16))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        
    }
}

#Preview {
    CardFaceFront(question: LocalizedText(english: "The question", spanish: "La pregunta"), category: "Principles of American Government", background: AppColor.neutralMuted)
}
