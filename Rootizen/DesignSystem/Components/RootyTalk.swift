//
//  RootyTalk.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/13/26.
//

import SwiftUI

struct RootyTalk: View {
    @State private var isWaving: Bool = false
    @State private var displayedText: String = ""
    var rootyImageName: String
    var rootyWidth: CGFloat
    var rootyTalkPhrases: [String]
    
    var body: some View {
        
        VStack(spacing: 0){
            SimpleChatBubble(message: displayedText, isFromMe: false, bubbleColor: AppColor.success, textColor: .white)
                .offset(x: 60)
            
            Image(rootyImageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: rootyWidth)
                .offset(x: -60)
                .rotationEffect(.degrees(isWaving ? 0.8 : -0.8), anchor: .bottom)
                .animation(
                    .easeInOut(duration: 2)
                    .repeatForever(autoreverses: true),
                    value: isWaving
                )
                .onAppear {
                    isWaving = true
                }
        }
        .task {
            for phrase in rootyTalkPhrases{
                    displayedText = phrase
                try? await Task.sleep(for: .seconds(2))
            }
            
        }
        
    }
}

#Preview {
    RootyTalk(rootyImageName: "Rooty", rootyWidth: 200, rootyTalkPhrases: Phrase.init(rootyTalksCases: .presentation).phrase)
}

