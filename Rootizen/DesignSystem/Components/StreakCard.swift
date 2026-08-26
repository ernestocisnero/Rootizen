
//
//  StreakCard.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct StreakCard: View {
    var streakCount: Int
    var userName: String

    var body: some View {

        VStack(spacing: 8) {

            // Flame icon in soft circle
            ZStack {
                Circle()
                    .fill(AppColor.secondaryText)
                    .frame(width: 80)

                Image(systemName: "flame")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(AppColor.error)
                    .frame(width: 50, height: 50)
            }
            

            // Big streak number
            Text("\(streakCount)")
                .font(.system(size: 50, weight: .bold))
                .foregroundStyle(AppColor.secondaryText)
               

            VStack(spacing: 0){
                // Title
                Text("Daily Streak")
                    .foregroundStyle(AppColor.secondaryText)
                    .primaryTitle()
                   

                // Subtitle
                Text("You are doing really great, \(userName)!")
                    .secondaryTitle()
                   
            }
            
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(AppColor.success)
        .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(Color.black.opacity(0.08), lineWidth: 1)
        }
        .shadow(
            color: AppColor.success,
            radius: 0,
            x: 0,
            y: 5
        )
    }
}

#Preview {
    StreakCard(streakCount: 5, userName: "Ernesto")
        .padding()
}
