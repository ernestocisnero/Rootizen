//
//  UserProgressIView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/4/26.
//

import SwiftUI

struct UserProgressView: View {
    @Environment(AppState.self) private var appState
    @Environment(PurchaseManager.self) private var purchaseManager
    @State private var showingPaywall: Bool = false
    
    var categoryAccuracyItems: [CategoryAccuracyItem] {
        QuestionCategory.allCases.map { category in
            CategoryAccuracyItem(
                category: category,
                correct: appState.progress?.categoryCorrectCounts[category, default: 0] ?? 0,
                total: appState.progress?.categoryTotalCounts[category, default: 0] ?? 0
            )
        }
    }
    
    var totalQuizTaken: Int {
        appState.progress?.totalQuizTaken ?? 0
    }
    
    var totalCorrectQuiz: Int{
        appState.progress?.totalCorrectQuiz ?? 0
    }
    
    var totalFlashcardTaken: Int {
        appState.progress?.totalFlashcardTaken ?? 0
    }
    
    var totalCorrectFlashcard: Int{
        appState.progress?.totalCorrectFlashcard ?? 0
    }
    
    var totalAccuracy: Double {
        let totalQuestions =
        (totalQuizTaken + totalFlashcardTaken) * 10
        
        guard totalQuestions > 0 else {
            return 0.0
        }
        
        return Double(totalCorrectQuiz + totalCorrectFlashcard)
        / Double(totalQuestions)
        * 100
    }
    
    
    var body: some View {
        
        List{
            Section("Overall"){
                RowStats(items: [
                    StatItem(value: "\(totalQuizTaken)", label: "Quiz", imageRow: "book", itemColor: AppColor.leagueColor(for: .gold)),
                    StatItem(value: "\(totalFlashcardTaken)", label: "Flashcards", imageRow: "lanyardcard", itemColor: AppColor.leagueColor(for: .diamond)),
                    StatItem(value: "\(totalAccuracy)%", label: "Accuracy", imageRow: "target", itemColor: AppColor.info)
                    
                ])
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
                
            }
            .listSectionSeparator(.hidden)
            
            if purchaseManager.isPremiumUnlocked {
                
                Section("ACCURACY BY CATEGORY"){
                    ScrollView{
                        CategoryAccuracySection(items: categoryAccuracyItems)
                    }
                    .frame(height: 300)
                }
                
                //MARK: --  By Practice Mode
                Section("BY PRACTICE MODE"){
                    
                    ScrollView{
                        ByPracticeMode(title: "Quiz", total: (totalQuizTaken * 10), correct: totalCorrectQuiz)
                        ByPracticeMode(title: "Flashcard", total: (totalFlashcardTaken * 10), correct: totalCorrectFlashcard)
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
                        CategoryAccuracySection(items: categoryAccuracyItems)
                    }
                    .frame(height: 300)
                    .proLocked()
                }
                
                //MARK: --  By Practice Mode
                Section("BY PRACTICE MODE"){
                    ByPracticeMode(title: "Quiz", total: (totalQuizTaken * 10), correct: totalCorrectQuiz)
                        .proLocked()
                }
                
                
            }
            
            
        }
        .navigationTitle("My Progress")
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
                .presentationDetents([.fraction(0.75)])
                .background(AppColor.background)
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    UserProgressView()
        .environment(AppState())
        .environment(PurchaseManager())
}
