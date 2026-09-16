//
//  RepresentativesView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct RepresentativesView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var service = RepresentativesService()
    @State private var zipInput = ""

       var body: some View {
           VStack {
               HStack(alignment: .firstTextBaseline){
                   VStack(alignment: .leading){
                       Text("Reps:")
                           .bodyText()
                   }
                   
                   Spacer()
                   
                   DismissBtn(backgroundColor: AppColor.accentMuted, shadowBorderColor: AppColor.accent, action: { dismiss() })
               }
               HStack {
                   TextField("Enter zip", text: $zipInput)
                       .keyboardType(.numberPad)
                       .textFieldStyle(.roundedBorder)

                   Button("Fetch") {
                       Task {
                           await service.fetchRepresentatives(forZip: zipInput)
                       }
                   }
               }
               .padding()

               if service.isLoading {
                   ProgressView()
               } else if let error = service.errorMessage {
                   Text(error).foregroundColor(.red)
               } else if let result = service.currentResult {
                   ScrollView {
                       VStack(alignment: .leading, spacing: 16) {
                           Text("Representatives").font(.headline)
                           ForEach(result.representatives) { rep in
                               Text("\(rep.name) — \(rep.area) (\(rep.party))")
                           }

                           Text("National Leaders").font(.headline)
                           ForEach(result.nationalLeaders) { leader in
                               Text("\(leader.role): \(leader.name)")
                           }

                           Text("State Leaders").font(.headline)
                           ForEach(result.stateLeaders) { leader in
                               Text("\(leader.role): \(leader.name)")
                           }
                       }
                       .padding()
                   }
               }
           }
       }
}

#Preview {
    RepresentativesView()
}
