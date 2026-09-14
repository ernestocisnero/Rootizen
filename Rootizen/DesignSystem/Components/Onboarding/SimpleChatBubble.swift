//
//  SimpleChatBubble.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI

struct SimpleChatBubble: View {
    let message: String
    let isFromMe: Bool
    let bubbleColor: Color
    let textColor: Color
    
    var body: some View {
        HStack {
            
            TypewriterText(fullText: message, speed: 0.08)
                .padding(.horizontal, 28)
                .padding(.vertical, 28)
                .foregroundStyle(isFromMe ? .white : textColor)
                .background(isFromMe ? Color.blue : bubbleColor)
                .clipShape(
                    // Flatten one corner to mimic a simple speech bubble
                    UnevenRoundedRectangle(
                        topLeadingRadius: 30,
                        bottomLeadingRadius: isFromMe ? 30 : 1,
                        bottomTrailingRadius: isFromMe ? 1 : 30,
                        topTrailingRadius: 30
                    )
                )
        }
        .padding(.horizontal)
    }
}

struct TypewriterText: View {
    let fullText: String
    let speed: Double
    
    @State private var displayedText: String = ""
    @State private var typingTask: Task<Void, Never>?
    
    var body: some View {
        Text(displayedText)
            .onAppear { startTyping() }
            .onChange(of: fullText) { startTyping() }
            .sensoryFeedback(.impact(weight: .heavy), trigger: fullText)
    }
    
    
    private func startTyping() {
        typingTask?.cancel()
        withAnimation(.easeInOut(duration: 0.2)){
            displayedText = ""
        }
        
        typingTask = Task {
            for char in fullText {
                if Task.isCancelled { return }
                try? await Task.sleep(for: .seconds(speed))
                if Task.isCancelled { return }
                withAnimation(.easeInOut(duration: 0.15)) {
                    displayedText.append(char)
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 12) {
        SimpleChatBubble(message: "Hey, how is it going?", isFromMe: false, bubbleColor: AppColor.success, textColor: .white)
    }
}

