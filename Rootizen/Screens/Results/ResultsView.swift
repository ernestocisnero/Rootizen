//
//  QuizResults.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct ResultsView: View {
    @Environment(AppState.self) private var appState
    @State private var showingPaywall: Bool = false
    
    let score: Int
    let total: Int
    let onClose: () -> Void
    
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
                        StatItem(value: "4", label: "Day streak",imageRow: "flame", itemColor: AppColor.streak)
                    ])
                }
                
            }
            
            
            
            // MARK: --- Upgrade Card if user is not Plus version
            if !appState.isAppPlus{
                UpgradeCard(){ showingPaywall = true }
            }
            
            // MARK: -- Plus Version Zone
            if appState.isAppPlus {
                
                Section{
                    CategoryAccuracySection(items: [
                        CategoryAccuracyItem(category: .symbols, correct: 9, total: 10),
                        CategoryAccuracyItem(category: .history1800s, correct: 7, total: 10),
                        CategoryAccuracyItem(category: .geography, correct: 4, total: 8)
                    ])
                }
                
                Section{
                    MissedQuestionsSection(items: [
                        MissedQuestionItem(
                            category: .holidays,
                            question: LocalizedText(english: "What is Veterans Day?", spanish: "¿Qué es el Día de los Veteranos?"),
                            yourAnswer: LocalizedText(english: "A day for soldiers who died", spanish: "Un día para los soldados que murieron"),
                            correctAnswer: LocalizedText(english: "A holiday to honor people who have served in the U.S. military", spanish: "Un día festivo para honrar a las personas que han servido en las fuerzas militares de los Estados Unidos")
                        )
                    ])
                }
            }
            
            
            // MARK: Action
            PrimaryButton(title: "Back to home", color: AppColor.surface, foreground: AppColor.primaryText) {
                onClose()
            }
            .buttonStyle(.borderedProminent)
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
        }
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
        }
        
        .background(AppColor.background)
        .onAppear {
            //SoundManager.shared.play(.quizComplete)
           
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ResultsView(score: 8, total: 10, onClose: {})
        .environment(AppState())
}
