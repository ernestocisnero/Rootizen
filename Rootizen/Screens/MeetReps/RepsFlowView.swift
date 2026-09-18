//
//  RepsFlowView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/17/26.
//

import SwiftUI

struct RepsFlowView: View {
    @Environment(AppState.self) private var appState
    @Environment(RepresentativesService.self) private var repService
    
    var body: some View {
        Group{
            if !appState.repsFlowOnboardingComplete {
                
                RepsOnboardingView()
                    .padding()
            }else{
                RepresentativesView()
 
            }
        }
        .animation(.easeInOut(duration: 0.8), value: appState.repsFlowOnboardingComplete)
    }
}

#Preview {
    RepsFlowView()
        .environment(AppState())
        .environment(RepresentativesService())
}
