//
//  OnboardingView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @Environment(AppState.self) private var appState
    @State private var triggerFeedback: Bool = false
    @State private var currentStep: Int = 0
    var body: some View {
        
        VStack{
            TabView(selection: $currentStep){
                
                OnboardingPresentationView(
                    onSelect: appState.setLanguage(_:)
                )
                .tag(0)
                
                OnboardingTestYearView(onSelect: appState.setQuestionVersion(_:))
                    .tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .highPriorityGesture(DragGesture())
        }
         
        HStack{
            SlideBarCounter(currentSlide: currentStep)
            Spacer()
            Button{
                handlesNext()
                triggerFeedback.toggle()
            }label:{
                HStack{
                    Text("Next")
                        .foregroundStyle(AppColor.success)
                        .primaryTitle()
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(AppColor.successBorder,
                            lineWidth: 1
                        )
                }
            }
            .sensoryFeedback(.selection, trigger: triggerFeedback)
            .buttonStyle(.plain)
        }
    } 
    
    private func handlesNext(){
        if currentStep < 1 {
            withAnimation(.smooth(duration: 0.4)){
                currentStep += 1
            }
        }else{
            withAnimation(.smooth(duration: 0.4)){
                appState.completeOnboarding()
            }
        }
    }
    
}

#Preview {
    OnboardingView()
        .environment(AppState())
        .padding()
}
