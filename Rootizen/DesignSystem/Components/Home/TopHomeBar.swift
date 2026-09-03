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

            PointsCapsule(capsuleType: .streak, points: 4, textPoints: "Streak Days")
            Spacer()
            PointsCapsule(capsuleType: .xpPoints, points: 10, textPoints: "XP Points")
            
        }
    }
}

#Preview {
    TopHomeBar()
        .environment(AppState())
}
