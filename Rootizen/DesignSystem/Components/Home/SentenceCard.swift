//
//  SentenceCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/2/26.
//

import SwiftUI

struct SentenceCard: View {
    let number: Int
    let text: String
    let actionListen: () -> Void
    let actionSpeak: () -> Void
    
    @State private var feedbackTrigger: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Sentence \(number)")
                .label()
            
            Text(text)
                .font(.title3.weight(.medium))
                .foregroundStyle(.primary)
            
            HStack(alignment: .top){
                Spacer()
                
                Button{
                    feedbackTrigger.toggle()
                    actionListen()
                }label:{
                    Text("Listen")
                        .bodyText(AppColor.secondaryBackground)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(AppColor.info)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                }
                .buttonStyle(.plain)
                .sensoryFeedback(.impact, trigger: feedbackTrigger)
                
                // MARK: -- Speak Button
                
                Button{
                    feedbackTrigger.toggle()
                    actionSpeak()
                }label:{
                    Text("Speak")
                        .bodyText(AppColor.secondaryBackground)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(AppColor.success)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                }
                .buttonStyle(.plain)
                .sensoryFeedback(.impact, trigger: feedbackTrigger)

            }
            .padding(.vertical)
 
        }
        .multilineTextAlignment(.leading)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColor.secondaryBackground, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}


#Preview{
    SentenceCard(number: 1, text: "Text", actionListen: {}, actionSpeak: {})
}
