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

            TypewriterText(fullText: message, speed: 0.1)
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
    let speed: Double // seconds between each character, e.g. 0.04

    @State private var displayedText: String = ""
    @State private var currentIndex: String.Index?

    var body: some View {
        Text(displayedText)
            .onAppear {
                startTyping()
            }
    }

    private func startTyping() {
        displayedText = ""
        currentIndex = fullText.startIndex

        // Fires every `speed` seconds, appending one character at a time
        Timer.scheduledTimer(withTimeInterval: speed, repeats: true) { timer in
            guard let index = currentIndex, index < fullText.endIndex else {
                timer.invalidate()
                return
            }

            displayedText.append(fullText[index])
            currentIndex = fullText.index(after: index)
        }
    }
}

#Preview {
    VStack(spacing: 12) {
        SimpleChatBubble(message: "Hey, how is it going?", isFromMe: false, bubbleColor: AppColor.success, textColor: .white)
    }
}

