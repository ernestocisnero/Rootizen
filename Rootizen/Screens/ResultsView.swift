//
//  QuizResults.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct ResultsView: View {

    @Environment(UserProgress.self) private var userProgress
    
    let score: Int
    let total: Int
    let onClose: () -> Void

    private var missed: Int { total - score }
    private var xpEarned: Int { score * 2 }

    var body: some View {

        VStack(spacing: 10) {


            // MARK: Icon + heading
            ZStack {
                Circle()
                    .fill(AppColor.successMuted)
                    .frame(width: 88, height: 88)

                Image(systemName: "party.popper.fill")
                    .font(.system(size: 34, weight: .medium))
                    .foregroundStyle(AppColor.success)
            }
            .padding(.bottom, 18)

            Text("Nice Work")
                .headline()

            Text("You've got \(score) of \(total) correct")
                .bodyText(AppColor.secondaryText)
                .padding(.bottom, 22)

            RowStats(items: [
                StatItem(value: "\(xpEarned)", label: "XP Earned", imageRow: "bolt", itemColor: AppColor.league),
                StatItem(value: "\(Int(score*100/total))%", label: "Accuracy", imageRow: "target", itemColor: AppColor.info),
                StatItem(value: "4", label: "Day streak",imageRow: "flame", itemColor: AppColor.streak)
            ])
            VStack(spacing: 18){
                PremiumCard( action: {} )
            }
          
            Spacer()

            // MARK: Action
            PrimaryButton(title: "Back to home", color: AppColor.neutralMuted, foreground: AppColor.primaryText) {
                onClose()
            }
        }
        .padding()
        .background(AppColor.background)
        .onAppear {
            SoundManager.shared.play(.quizComplete)
            userProgress.incrementXpoints(points: xpEarned)
        } 
    }
}

#Preview {
    ResultsView(score: 8, total: 10, onClose: {})
        .environment(UserProgress())
}
