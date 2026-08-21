//
//  TopHomeBar.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct TopHomeBar: View {
    @Environment(AppState.self) private var appState
    
    var body: some View {
        
        HStack(spacing: 8){

            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 6){
                Text("Welcome back!")
                    .secondaryTitle()
                
                Text("Keep it up, \(appState.userName)")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(AppColor.primaryText)
            }
            
            Spacer()
            
            HStack(spacing: 6){
                Image(systemName: "star.fill")
                    .foregroundStyle(AppColor.accent)
                Text("320 XP")
                    .bold()
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
