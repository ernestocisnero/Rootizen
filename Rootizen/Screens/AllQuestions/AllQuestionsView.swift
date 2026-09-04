//
//  AllQuestionsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/3/26.
//

import SwiftUI

struct AllQuestionsView: View {
    @Environment(\.dismiss) private var dismiss
    
    let questionsVersion: QuestionVersion
    
    var questions: [Question]{
        questionsVersion != .v2025 ? q2025version : q2008version
    }
    
    var body: some View {
        
        VStack{
            HStack(alignment: .firstTextBaseline){
                VStack(alignment: .leading){
                    Text("\(questionsVersion == .v2008 ? "Version 2008: 100 Questions" : "Version 2025: 125 Questions")")
                        .primaryTitle()
                    
                    Text("Tap each card to see the answer")
                        .bodyText()
                }
                
                Spacer()
                
                DismissBtn(backgroundColor: AppColor.accentMuted, shadowBorderColor: AppColor.accent, action: { dismiss() })
            }
            .padding()
            
            
            
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(questions) { question in
                        FlipCard(question: question)
                            .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    AllQuestionsView(questionsVersion: .v2025)
}
