//
//  CardFaceBack.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/8/26.
//

import SwiftUI

struct CardFaceBack: View {
    let answers: LocalizedText
    let category: String
    let background: Color
    
    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading){
                Spacer()
                Text(answers.english)
                Divider()
                Text(answers.spanish)
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
    CardFaceBack(answers: LocalizedText(english: "The answer", spanish: "La respuesta"), category: "History", background: AppColor.successMuted)
}
