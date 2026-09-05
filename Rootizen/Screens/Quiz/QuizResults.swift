//
//  QuizResults.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct QuizResults: View {

    @Environment(UserProgress.self) private var userProgress
    
    let score: Int
    let total: Int
    let onClose: () -> Void

    private var missed: Int { total - score }
    private var xpEarned: Int { score * 2 }

    var body: some View {

        VStack(spacing: 0) {

            Spacer()

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

            Text("Quiz complete!")
                .headline()

            Text("Nice work reviewing your civics.")
                .bodyText(AppColor.secondaryText)
                .padding(.bottom, 22)

            // MARK: Score card
            VStack(spacing: 6) {
                Text("\(score)/\(total)")
                    .font(.system(size: 38, weight: .semibold))
                    .foregroundStyle(AppColor.info)

                Text("Correct answers")
                    .bodyText(AppColor.secondaryText)
            }
            .frame(maxWidth: .infinity)
            .padding(18)
            .background(AppColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(AppColor.border, lineWidth: 1)
            }
            .padding(.bottom, 10)
            
            // MARK: Missed / XP stat tiles
            HStack(spacing: 10) {
                statTile(
                    icon: "xmark",
                    value: "\(missed)",
                    label: "Missed",
                    tint: AppColor.errorBorder,
                    background: AppColor.errorMuted
                )

                statTile(
                    icon: "bolt.fill",
                    value: "+\(xpEarned)",
                    label: "XP earned",
                    tint: AppColor.accentBorder,
                    background: AppColor.accentMuted
                )
            }
            .padding(.bottom, 22)

            Spacer()

            // MARK: Action
            PrimaryButton(title: "Back to home", color: AppColor.neutralMuted, foreground: AppColor.primaryText) {
                onClose()
            }
        }
        .background(AppColor.background)
        .onAppear {
            SoundManager.shared.play(.quizComplete)
            userProgress.incrementXpoints(points: xpEarned)
        }
    }

    private func statTile(icon: String, value: String, label: String, tint: Color, background: Color) -> some View {
        VStack(spacing: 6) {
            Image(systemName: icon)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(tint)

            Text(value)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(tint)

            Text(label)
                .bodyText(AppColor.secondaryText)
        }
        .frame(maxWidth: .infinity)
        .padding(14)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    QuizResults(score: 8, total: 10, onClose: {})
        .environment(UserProgress())
}
