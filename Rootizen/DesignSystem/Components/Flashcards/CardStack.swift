//
//  CardStack.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI

struct CardStack: View {
    static let example = FlashCard(id: "fc_001", statement: "The Constitution is the supreme law of the land.", isTrue: true)
    
    // let questionsArrayToCards: [FlashCard]
    @State private var cards = Array<FlashCard>(repeating: example, count: 10)
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        Card(card: cards[index]){
                            withAnimation {
                                removeCard(at: index)
                            }
                        }
                        .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
    
    func removeCard(at index: Int) {
        cards.remove(at: index)
    }
    
}


extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(x: offset * 0.4, y: offset * 1)
    }
}

#Preview {
    CardStack()
}
