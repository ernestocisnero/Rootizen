//
//  LeaderRow.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct LeaderRow: View {
    let leader: Leader
    
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: leader.photoURL ?? "")) { phase in
                
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
                Text(leader.name).font(.headline)
                Text(leader.role.replacingOccurrences(of: "_", with: " ").capitalized)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(12)
        .background(.gray.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    LeaderRow(leader: Leader(role: "president", name: "Jane Doe", party: "Independent", photoURL: nil))
}
