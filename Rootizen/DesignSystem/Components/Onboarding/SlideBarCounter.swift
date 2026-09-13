//
//  SlideBarCounter.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/12/26.
//

import SwiftUI

struct SlideBarCounter: View {
    let currentSlide: Int
    var body: some View {
        
        HStack(spacing: 8){
            ForEach(0..<2){ index in
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(maxWidth: 10, maxHeight: 10)
                    .foregroundStyle(index == currentSlide ? AppColor.success: AppColor.secondaryBackground)
                
            }
            
        }
    }
}

#Preview {
    SlideBarCounter(currentSlide: 0)
}
