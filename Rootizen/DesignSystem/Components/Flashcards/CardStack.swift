//
//  CardStack.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI

struct CardStack: View {
    @Environment(FlashcardsManager.self) private var fcManager
    
    let cards: [FlashCard]
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        Card(card: cards[index])
                        .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
    
}


extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(x: offset * 0.4, y: offset * 1)
    }
}

#Preview {
    CardStack(cards: Array(flashCards2008.shuffled().prefix(10)))
        .environment(FlashcardsManager(flashcardVersionYear: flashCards2025))
}
