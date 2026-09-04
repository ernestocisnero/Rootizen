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
}

struct RowStats: View {
    let items: [StatItem]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(items.indices, id: \.self) { index in
                VStack(spacing: 4) {
                    Text(items[index].value)
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .foregroundColor(AppColor.primaryText)

                    Text(items[index].label.uppercased())
                        .font(.system(size: 11, weight: .medium))
                        .foregroundColor(AppColor.thirdText)
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
        .overlay {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(AppColor.border, lineWidth: 1)
        }
    }
}

#Preview {
    RowStats(items: [
        StatItem(value: "14", label: "day streak"),
        StatItem(value: "32", label: "courses"),
        StatItem(value: "4.2k", label: "points")
    ])
    .padding()
    
}
