//
//  SelectLanguageView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/9/26.
//

import SwiftUI

struct SelectLanguageView: View {
    @Environment(AppState.self) private var appState
    @State private var isSelected: Bool = false
    
    var selectedLanguage: AppLanguage{
        appState.appLanguage
    }
    
    var body: some View {
        List{
            
            Section("Select App Language"){
                
                Button{
                    
                    appState.setLanguage(.english)
                    
                }label: {
                    HStack{
                        Text("English")
                        
                        Spacer()
                        
                        if selectedLanguage == .english {
                            Image(systemName: "checkmark")
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    
                }
                .buttonStyle(.plain)
                
               // MARK: -- Spanish Button
                Button{
                    
                    appState.setLanguage(.spanish)
                    
                }label: {
                    HStack{
                        Text("Español")
                        
                        Spacer()
                        
                        if selectedLanguage == .spanish {
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
    SelectLanguageView()
        .environment(AppState())
}
