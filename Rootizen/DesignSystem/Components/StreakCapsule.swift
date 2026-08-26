//
//  StreakCapsule.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

struct StreakCapsule: View {
    
    let streakDays: Int
    
    var body: some View {

        HStack(spacing: 24){
            Image(systemName: "flame")
                .foregroundStyle(.white)
                .padding(8)
                .background(AppColor.streak)
                .clipShape(Circle())
            
            Text("\(streakDays)")
                .foregroundStyle(AppColor.streak)
                .primaryTitle()
                

        }
        .padding(8)
        .padding(.horizontal, 8)
        .background(AppColor.errorMuted)
        .clipShape(Capsule())
    }
}

#Preview {
    StreakCapsule(streakDays: 1)
}
