//
//  ExpPointsCapsule.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

struct ExpPointsCapsule: View {
    
    let xpPoints: Int
    
    var body: some View {
        
        HStack(spacing: 24){
            Image(systemName: "bolt")
                .foregroundStyle(.white)
                .padding(8)
                .background(AppColor.accent)
                .clipShape(Circle())
            
            Text("\(xpPoints)")
                .foregroundStyle(AppColor.accent)
                .primaryTitle()
                

        }
        .padding(8)
        .padding(.horizontal, 8)
        .background(AppColor.accentMuted)
        .clipShape(Capsule())
        
    }
}

#Preview {
    ExpPointsCapsule(xpPoints: 10)
}
