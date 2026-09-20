//
//  FlashcardsView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/19/26.
//

import SwiftUI

struct FlashcardsView: View {
    @Binding var path: [FlashDestination]
    
    let onClose: () -> Void
    
    var body: some View {
        
        // MARK: Header
        VStack {
            
            HStack(spacing: 12){
            
                Text("5/10")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(AppColor.secondaryText)
                
                //Progress bar
                ProgressBar(progressValue: 2, progressColor: AppColor.info, customHeight: 6, basePercent: 10)
                
                DismissBtn(
                    backgroundColor: AppColor.accentMuted,
                    shadowBorderColor: AppColor.accent
                ) {
                    onClose()
                }
                
            }
            
            Spacer()
            
            CardStack()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FlashcardsView(path: .constant([]), onClose: {})
}
