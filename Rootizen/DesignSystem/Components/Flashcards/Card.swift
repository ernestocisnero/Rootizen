//
//  Card.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI
import SwiftData

struct Card: View {
    @Environment(FlashcardsManager.self) private var fcManager
    
    let card: FlashCard
    
    private var iconName: String {
        switch card.category {
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
    
    @State private var offset = CGSize.zero
    private let swipeThreshold: CGFloat = 120
    private let velocityThreshold: CGFloat = 300
    
    var body: some View {
        ZStack {
            
            ZStack{
                Circle()
                    .fill(AppColor.info.opacity(0.2))
                    .frame(width: 120, height: 120)
                    .offset(x: 150, y: -150)
            }
            .zIndex(1)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .shadow(radius: 1)
            
            VStack(alignment: .center, spacing: 8){
                
                HStack{
                    Image(systemName: iconName)
                        .label()
                    Text(card.category.rawValue)
                        .label()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                
                Spacer()
                
                Text(card.statement)
                    .primaryTitle(AppColor.info)
                
                Spacer()
                
                HStack{
                    VStack{
                        Image(systemName: "xmark.seal.fill")
                        
                        Text("False")
                    }
                    .label(AppColor.error)
                    
                    Spacer()
                    
                    VStack{
                        Image(systemName: "checkmark.seal.fill")
                        Text("True")
                    }
                    .label(AppColor.success)
                }
                
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .overlay {
            RoundedRectangle(cornerRadius: 25)
                .stroke(AppColor.border, lineWidth: 1)
        }
        .padding()
        .frame(width: 380, height: 380)
        .rotationEffect(.degrees(offset.width / 20.0))
        .offset(x: offset.width)
        .gesture( swipeGesture() )
    }
    
    private func swipeGesture() -> some Gesture {
        DragGesture()
            .onChanged { value in
                offset = value.translation
            }
            .onEnded { value in
                let distance = value.translation.width
                let velocity = value.velocity.width
                
                let swipedRight = distance > swipeThreshold || velocity > velocityThreshold
                let swipedLeft  = distance < -swipeThreshold || velocity < -velocityThreshold
                
                if swipedRight {
                    performSwipe(answer: true)
                } else if swipedLeft {
                    performSwipe(answer: false)
                } else {
                    // Didn't reach threshold — spring back
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                        offset = .zero
                    }
                }
            }
    }
    
    private func performSwipe(answer: Bool) {
        withAnimation(.easeOut(duration: 0.3)) {
            offset.width = answer ? 500 : -500
        } completion: {
            fcManager.handleSwipe(userAnswer: answer)
            offset = .zero // view resets visual offset
        }
    }
}

#Preview {
    VStack{
        Card(card: FlashCard(id: "fc_001", statement: "The Constitution is the supreme law of the land.", isTrue: true, category: .principlesOfGovernment))
            .environment(FlashcardsManager(flashcardVersionYear: flashCards2025))
    }
}
