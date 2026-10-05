//
//  ByCategoryAccuracy.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/5/26.
//

import SwiftUI

struct ByCategoryAccuracy: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Quiz")
 
                Spacer()
 
                Text("128 Answered")
            }

        }
        .padding(16)
        .accessibilityElement(children: .combine)
    }
    
}

#Preview {
    ByCategoryAccuracy()
}
