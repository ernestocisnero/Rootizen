//
//  OnboardingTestYear.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/11/26.
//

import SwiftUI

struct OnboardingTestYearView: View {
    
    let onSelect: (QuestionVersion)-> Void
    
    var body: some View {
        VStack{
            Text("Question version")
        }
    }
}

#Preview {
    OnboardingTestYearView(
        onSelect: { _ in }
    )
}
