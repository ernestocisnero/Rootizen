//
//  WordHighlightFlow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/3/26.
//

import SwiftUI

struct WordHighlightFlow: View {
    let results: [WordMatchResult]

    var body: some View {
        FlowLayout(spacing: 6) {
            ForEach(results) { result in
                Text(result.word)
                    .font(.subheadline.weight(.medium))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(
                        (result.isCorrect ? AppColor.success : AppColor.error).opacity(0.15),
                        in: Capsule()
                    )
                    .foregroundStyle(result.isCorrect ? AppColor.success : AppColor.error)
            }
        }
    }
}
