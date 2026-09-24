//
//  PaywallView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/23/26.
//

//
//  PaywallView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/23/26.
//

import SwiftUI

struct PaywallView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                DismissBtn(backgroundColor: AppColor.secondaryBackground, shadowBorderColor: AppColor.secondaryText, action: { dismiss() })
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 8)

            ScrollView {
                VStack(spacing: 8) {
                    Text("Rootizen Plus")
                        .font(.largeTitle.weight(.bold))
                    
                    Text("Everything you need to pass with confidence")
                        .bodyText(AppColor.secondaryText)
                    
                    Text("One time payment. Access for life.")
                        .bodyText(AppColor.secondaryText)
                }
                .padding(.top, 24)
                .frame(maxWidth: .infinity)

                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Plus - $4.99")
                            .font(.title2.weight(.bold))
                       
                    }

                    VStack(alignment: .leading, spacing: 18) {
                        benefitRow(icon: "slider.horizontal.3", text: "Customize question count (10–20) per session")
                        benefitRow(icon: "list.bullet.below.rectangle", text: "Unlimited Quiz & Flashcard")
                        benefitRow(icon: "chart.bar", text: "Unlock accuracy breakdown by category")
                        benefitRow(icon: "arrow.counterclockwise.circle", text: "Review every missed question")
                        benefitRow(icon: "headphones", text: "Listening & speaking practice modes")
                    }

                    Spacer()
                    
                    Button {
                        // trigger purchase flow
                    } label: {
                        Text("Get Plus")
                            .bodyText()
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(AppColor.leagueColor(for: .gold).muted(0.5))
                }
                .padding(20)
                .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                .padding(.horizontal)
                .padding(.top, 24)
            }
        }
        .padding(.top)
    }

    private func benefitRow(icon: String, text: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(AppColor.leagueColor(for: .gold))
                .frame(width: 24)

            Text(text)
                .font(.body)
                .foregroundStyle(.primary)

            Spacer(minLength: 0)
        }
    }
}

#Preview {
    PaywallView()
}
