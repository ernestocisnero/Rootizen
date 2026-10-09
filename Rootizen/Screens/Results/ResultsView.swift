//
//  QuizResults.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct ResultsView: View {
    @Environment(AppState.self) private var appState
    @Environment(PurchaseManager.self) private var purchaseManager
    
    @State private var showingPaywall: Bool = false
    
    let score: Int
    let total: Int
    let categoryCorrectCounts: [QuestionCategory: Int]
    let categoryTotalCounts: [QuestionCategory: Int]
    let onClose: () -> Void
    
    var sessionCategoryAccuracyItems: [CategoryAccuracyItem] {
        categoryTotalCounts.keys.map { category in
            CategoryAccuracyItem(
                category: category,
                correct: categoryCorrectCounts[category, default: 0],
                total: categoryTotalCounts[category, default: 0]
            )
        }
    }
    
    var body: some View {
        List{
            
            Section{
                VStack{
                    // MARK: Icon + heading
                    ZStack {
                        Circle()
                            .fill(AppColor.success.muted(0.1))
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
                        StatItem(value: "\(Int(score*100/total))%", label: "Accuracy", imageRow: "target", itemColor: AppColor.info),
                    ])
                }
                
            }

            // MARK: -- Plus Version Zone
            if purchaseManager.isPremiumUnlocked {
                
                Section("ACCURACY BY CATEGORY"){
                    ScrollView{
                        CategoryAccuracySection(items: sessionCategoryAccuracyItems)
                    }
                    .frame(height: 300)
                }
                
            }else{
                // MARK: --- Upgrade Card if user is not Plus version
                Section{
                    UpgradeCard(){ showingPaywall = true }
                        .listRowInsets(EdgeInsets())
                        .listRowBackground(Color.clear)
                }
                
                Section("ACCURACY BY CATEGORY"){
                    ScrollView{
                        CategoryAccuracySection(items: sessionCategoryAccuracyItems)
                    }
                    .frame(height: 300)
                    .proLocked()
                }
            }
            
            // MARK: Action
            PrimaryButton(title: "Back to home", color: AppColor.speak.muted(0.5), foreground: AppColor.primaryText) {
                onClose()
            }
            .buttonStyle(.plain)
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
        }
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
                .presentationDetents([.fraction(0.75)])
                .background(AppColor.background)
                .presentationDragIndicator(.visible)
        }
        .onAppear {
            SoundManager.shared.play(.quizComplete)
            
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ResultsView(
        score: 8,
        total: 10,
        categoryCorrectCounts: [
            .principlesOfGovernment: 8,
            .geography: 4,
            .symbols: 9
        ],
        categoryTotalCounts: [
            .principlesOfGovernment: 10,
            .geography: 8,
            .symbols: 10
        ],
        onClose: {}
    )
    .environment(AppState())
    .environment(PurchaseManager())
}
