//
//  ProfileView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

struct ProfileView: View {
    @Environment(AppState.self) private var appState
    
    var body: some View {
        
        VStack{
            
            Text("Profile")
#if DEBUG
            
            Button("Reset onboarding"){
                appState.resetOnboarding()
            }
#endif
        }
        
        
        
    }
}

#Preview {
    ProfileView()
        .environment(AppState())
}
