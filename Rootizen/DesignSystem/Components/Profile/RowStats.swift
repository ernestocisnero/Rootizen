//
//  RowStats.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/27/26.
//

import SwiftUI

struct StatItem {
    let value: String
    let label: String
    let imageRow: String
    let itemColor: Color
}

struct RowStats: View {
    let items: [StatItem]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(items.indices, id: \.self) { index in
                VStack(spacing: 4) {
                    HStack(spacing: 6){
                        Image(systemName: items[index].imageRow)
                        Text(items[index].value)
                            .headline()
                    }
                    .foregroundColor(items[index].itemColor)
                
                    Text(items[index].label.uppercased())
                        .secondaryTitle()
                        .foregroundColor(AppColor.primaryText)
                }
                .frame(maxWidth: .infinity)

                if index < items.count - 1 {
                    Divider()
                        .frame(height: 34)
                }
            }
        }
        .padding(.vertical, 16)
        .background(AppColor.background)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
    }
}

#Preview {
    RowStats(items: [
        StatItem(value: "14", label: "Xp Earned", imageRow: "bolt", itemColor: AppColor.xp),
        StatItem(value: "80", label: "Accuracy", imageRow: "target", itemColor: AppColor.info),
        StatItem(value: "4", label: "Streak Days", imageRow: "flame", itemColor: AppColor.streak)
    ])
    .padding()
    
}
