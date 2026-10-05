//
//  CategoryAccuracySection.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//

import SwiftUI
// MARK: - Accuracy by category
 
struct CategoryAccuracySection: View {
    let items: [CategoryAccuracyItem]
 
    var body: some View {
        VStack(alignment: .leading, spacing: 8) { 
            VStack(spacing: 0) {
                ForEach(items) { item in
                    CategoryAccuracyRow(item: item)
 
                    if item.id != items.last?.id {
                        Divider().padding(.leading, 16)
                    }
                }
            }
            .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
    }
}
 
private struct CategoryAccuracyRow: View {
    let item: CategoryAccuracyItem
 
    // Placeholder thresholds — adjust when you decide what "good" means.
    private var tint: Color {
        if item.accuracy >= 0.8 { return AppColor.success }
        if item.accuracy >= 0.6 { return Color(.systemOrange) }
        return AppColor.error
    }
    
    private var categoryIconName: CategoryIconName {
        switch item.category {
        case .principlesOfGovernment: .principlesOfGovernment
        case .principlesofAmericanDemocracy: .principlesofAmericanDemocracy
        case .systemOfGovernment: .systemOfGovernment
        case .rightsAndResponsibilities: .rightsAndResponsibilities
        case .colonialPeriod: .colonialPeriod
        case .history1800s: .history1800s
        case .recentHistory: .recentHistory
        case .geography: .geography
        case .symbols: .symbols
        case .holidays: .holidays
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                
                Label(item.category.rawValue, systemImage: categoryIconName.rawValue)
                    .label()
 
                Spacer()
 
                Text(item.accuracy, format: .percent.precision(.fractionLength(0)))
                    .font(.body.weight(.semibold)
                    .monospacedDigit())
                    .foregroundStyle(tint)
            }
 
            ProgressView(value: item.accuracy)
                .tint(tint)
 
            Text("\(item.correct) of \(item.total) correct")
                .secondaryTitle()
        }
        .padding(16)
        .accessibilityElement(children: .combine)
    }
}
 
// MARK: - Preview
 
#Preview {
    ScrollView {
        VStack(spacing: 24) {
            CategoryAccuracySection(items: [
                CategoryAccuracyItem(category: .symbols, correct: 9, total: 10),
                CategoryAccuracyItem(category: .history1800s, correct: 7, total: 10),
                CategoryAccuracyItem(category: .geography, correct: 4, total: 8)
            ])
 
        }
        .padding()
    }
    .background(Color(.systemGroupedBackground))
}
 
