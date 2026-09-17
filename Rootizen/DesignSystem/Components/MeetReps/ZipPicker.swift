//
//  ZipPicker.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct ZipPicker: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    @State private var zipCode: String = ""
    
    var body: some View {
        Form{
            TextField("Enter Zip Code", text: $zipCode)
                .keyboardType(.numberPad)
                .textContentType(.postalCode)
            
            Button("Accept"){
                appState.setZipCode(zipCode)
                dismiss()
            }
        }
    }
}

#Preview {
    ZipPicker()
        .environment(AppState())
}
