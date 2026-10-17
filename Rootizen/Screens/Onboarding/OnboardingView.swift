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
            .animation(.easeInOut, value: currentStep)
        }
        
        
        // MARK: Next button.
        VStack(spacing: 16){

            PrimaryButton(title: currentStep < 1 ? "Next": "Start", color: AppColor.success, action: {
                handlesNext()
                triggerFeedback.toggle()
            })
            
            SlideBarCounter(currentSlide: currentStep)
        }
    }
    
    private func handlesNext(){
        if currentStep < 1 {
            withAnimation(.smooth(duration: 0.4)){
                currentStep += 1
            }
        }else{
            withAnimation(.smooth(duration: 0.4)){
                Task{
                    NotificationManager.shared.checkForPermission()
                }
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
