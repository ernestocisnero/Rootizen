
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

        VStack(spacing: 0) {

            // Flame icon in soft circle
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [
                                Color(AppColor.secondaryBackground).opacity(1),
                                Color(AppColor.secondaryBackground).opacity(0.0)
                            ],
                            center: .center,
                            startRadius: 10,
                            endRadius: 90
                        )
                    )
                    .frame(width: 80)

                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
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
            }
            

            // Big streak number
            Text("\(streakCount)")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color.black, Color.black.opacity(0.75)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .offset(y: -20)

            VStack(spacing: 6){
                // Title
                Text("Daily Streak")
                    .primaryTitle()
                    .foregroundColor(.primary)
                    .offset(y: -12)

                // Subtitle
                Text("You are doing really great, \(userName)!")
                    .secondaryTitle()
                    .offset(y: -8)
            }
            
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(AppColor.background)
        .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(Color.black.opacity(0.08), lineWidth: 1)
        }
        .shadow(
            color: .black.opacity(0.10),
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
