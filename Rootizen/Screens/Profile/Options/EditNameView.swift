//
//  EditNameView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/28/26.
//

import SwiftUI

struct EditNameView: View {
    let name: String
    let onSave: (String) -> Void   // <- this is the closure parameter
    
    @State private var editedName: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            TextField("Name", text: $editedName)
            
            Button("Save") {
                onSave(editedName)   // <- calls back to ProfileView with the typed value
                dismiss()
            }
        }
        .onAppear {
            editedName = name   // pre-fill with current name
        }
    }
}

#Preview {
    EditNameView(name: "", onSave: {_ in} )
        .padding()
}
