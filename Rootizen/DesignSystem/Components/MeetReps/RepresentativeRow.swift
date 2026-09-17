//
//  RepresentativeRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct RepresentativeRow: View {
    let rep: Representative
 
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: rep.photoURL)) { phase in
                
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                case .empty:
                    ProgressView()
                    
                case .failure:
                    Circle()
                        .fill(.gray.opacity(0.2))
                        .frame(width: 48, height: 48)
                        .overlay(Image(systemName: "person.fill")
                            .foregroundStyle(.secondary))
                    
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 48, height: 48)
            .clipShape(Circle())
 
            VStack(alignment: .leading, spacing: 2) {
                Text(rep.name).font(.headline)
                Text(rep.area).font(.subheadline).foregroundStyle(.secondary)
                Text(rep.party).font(.caption).foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(12)
        .background(.gray.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    let mock = Representative(
        id: "rep-1",
        name: "Alex Johnson",
        phone: "5551234567",
        url: "https://example.com",
        photoURL: "",
        party: "Independent",
        state: "CA",
        reason: "Elected",
        area: "District 12",
        fieldOffices: [
            FieldOffice(phone: "5559876543", city: "San Francisco")
        ]
    )
    return RepresentativeRow(rep: mock)
}
