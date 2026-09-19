//
//  RepsScreenHeader.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct RepsScreenHeader: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    @State private var editZipCode: Bool = false
    let location: String
    let state: String

    var body: some View {
        VStack{
            
            HStack{
                Text("Your Government")
                    .headline()
                
                Spacer()
                
                // MARK: Dismiss button
                DismissBtn(backgroundColor: AppColor.successMuted, shadowBorderColor: AppColor.success, action: { dismiss() })
            }
            
            HStack{
                HStack(spacing: 8){
                    Image(systemName: "mappin.and.ellipse")
                        .headline()
                    Text("\(location), \(state)")
                        .primaryTitle()
                }
                
                Spacer()
                
                // MARK: Edit Zip Code
                Button{
                    editZipCode = true
                }label: {
                    Text("Change")
                }

            }
            .padding(12)
            .background(.gray.opacity(0.08))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .sheet(isPresented: $editZipCode){
            ZipPicker()
                .environment(appState)
                .presentationDetents([.fraction(0.3)])
                .presentationDragIndicator(.visible)
                .presentationBackground(.white)
        }
    }
}

#Preview {
    RepsScreenHeader(location: "Cape Coral", state: "FL")
        .environment(AppState())
}
