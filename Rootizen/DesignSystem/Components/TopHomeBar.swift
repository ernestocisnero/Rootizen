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
        
        HStack(spacing: 8){
            
            VStack(alignment: .leading, spacing: 6){
                Text("Welcome back!")
                    .secondaryTitle()
                
                Text("\(appState.userName)")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundStyle(AppColor.primaryText)
            }
            
            Spacer()
            
            HStack(spacing: 6){
                Image(systemName: "flame.fill")
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.65, blue: 0.35),
                                Color(red: 0.95, green: 0.4, blue: 0.15)
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                Text("320 XP")
                    .font(.system(size: 18, weight: .medium, design: .rounded))

            }
            .font(.callout)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(AppColor.secondaryBackground.opacity(0.8))
            .clipShape(Capsule())
            
        }
    }
}

#Preview {
    TopHomeBar()
        .environment(AppState())
}
