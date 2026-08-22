//
//  QuizView.swift
//  Unionify
//
//  Created by Ernesto Cisnero on 8/22/26.
//

import SwiftUI

struct QuizView: View {
    
    @Binding var path: [QuizDestination]
    let onClose: () -> Void
    
    
    var body: some View {
        VStack {
            Text("Quiz View")
            
            Button("Navigate to result"){
                path.append(.results)
            }
            
            Button("Close"){
                onClose()
            }
        }
    }
}

#Preview {
    QuizView(path: .constant([]), onClose: {})
}
