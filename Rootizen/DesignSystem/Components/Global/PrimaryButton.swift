//
//  PrimaryButton.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

struct PrimaryButton: View {
    @State private var feedbackTrigger: Bool = false
    
    let title: String
    let color: Color
    var foreground: Color = .white
    let action: () -> Void
    

    var body: some View {
        Button{
            feedbackTrigger.toggle()
            action()
        }label:{
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .frame(maxWidth: .infinity)
                .foregroundStyle(foreground)
                .padding(.vertical, 15)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.impact, trigger: feedbackTrigger)
    }
}

#Preview {
    VStack(spacing: 10) {
        PrimaryButton(title: "Continue", color: AppColor.info) {}
        PrimaryButton(title: "Try again", color: AppColor.error) {}
        PrimaryButton(title: "Start quiz", color: AppColor.success) {}
        PrimaryButton(title: "Get Pro", color: AppColor.accent) {}
    }
    .padding()
}
