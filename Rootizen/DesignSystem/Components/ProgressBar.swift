//
//  ProgressBar.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

struct ProgressBar: View {
    
    var progressValue: CGFloat
    var progressColor: Color
    var customHeight: CGFloat
    var basePercent: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: customHeight)
                .foregroundStyle(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            Rectangle()
                .frame(maxWidth: 350 * self.progressValue / basePercent, maxHeight: customHeight)
                .foregroundStyle(Color(progressColor))
                .cornerRadius(10)
            
        }
    }
}

#Preview {
    ProgressBar(progressValue: 4, progressColor: AppColor.info, customHeight: 6, basePercent: 10)
}
