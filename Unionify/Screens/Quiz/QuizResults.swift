//
//  QuizResults.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct QuizResults: View {
    
    let onRestart: () -> Void
    let onClose: () -> Void
    
    var body: some View {
        Text("Quiz Results")
        
      

        Button("Try Again") { onRestart() }
        Button("Close") { onClose() }
    }
}

#Preview {
    QuizResults(onRestart: {}, onClose: {})
}
