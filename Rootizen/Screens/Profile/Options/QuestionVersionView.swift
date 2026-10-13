//
//  QuestionVersionView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/10/26.
//

import SwiftUI

struct QuestionVersionView: View {
    
    @Environment(AppState.self) private var appState
    @State private var isSelected: Bool = false
    
    var selectedVersion: QuestionVersion{
        appState.questionVersion
    }
    
    var body: some View {
        List{
            
            Section("Select Exam Version"){
                // MARK: -- Version 2008
                Button{
                    
                    appState.setQuestionVersion(.v2008)
                    
                }label: {
                    HStack{
                        Text("2008 Exam Version")
                        
                        Spacer()
                        
                        if selectedVersion == .v2008 {
                            Image(systemName: "checkmark")
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    
                }
                .buttonStyle(.plain)
                
               // MARK: -- Version 2025
                Button{
                    
                    appState.setQuestionVersion(.v2025)
                    
                }label: {
                    HStack{
                        Text("2025 Exam Version")
                        
                        Spacer()
                        
                        if selectedVersion == .v2025 {
                            Image(systemName: "checkmark")
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    
                }
                .buttonStyle(.plain)
            }
            
        }
        .listStyle(.insetGrouped)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    QuestionVersionView()
        .environment(AppState())
}
