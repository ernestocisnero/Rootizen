//
//  TopHomeBar.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct TopHomeBar: View {
    @Environment(AppState.self) private var appState
    
    var body: some View {
        
        HStack(spacing: 24){

            StreakCapsule(streakDays: 1)
            
            ExpPointsCapsule(xpPoints: 10)
            
            Spacer()
            
            HStack(spacing: 24){
                Text("EC")
            }
            .padding(8)
            .foregroundStyle(AppColor.success)
            .padding(8)
            .background(AppColor.successMuted)
            .clipShape(Circle())
            
        }
    }
}

#Preview {
    TopHomeBar()
        .environment(AppState())
}
