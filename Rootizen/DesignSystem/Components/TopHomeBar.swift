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
            Spacer()
            
            ExpPointsCapsule(xpPoints: 10)
            
        }
    }
}

#Preview {
    TopHomeBar()
        .environment(AppState())
}
