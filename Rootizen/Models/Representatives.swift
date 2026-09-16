//
//  Representatives.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/15/26.
//

import SwiftUI
import Foundation

struct RepresentativesResponse: Codable {
    let location: String
    let state: String
    let representatives: [Representative]
    let nationalLeaders: [Leader]
    let stateLeaders: [Leader]
}

struct Representative: Codable, Identifiable {
    let id: String
    let name: String
    let phone: String
    let url: String
    let photoURL: String
    let party: String
    let state: String
    let reason: String
    let area: String
    let fieldOffices: [FieldOffice]

    enum CodingKeys: String, CodingKey {
        case id, name, phone, url, photoURL, party, state, reason, area
        case fieldOffices = "field_offices"
    }
}

struct FieldOffice: Codable {
    let phone: String
    let city: String
}

struct Leader: Codable, Identifiable {
    let role: String
    let name: String
    let party: String
    let photoURL: String?

    var id: String { role }

    enum CodingKeys: String, CodingKey {
        case role, name, party
        case photoURL = "photo_url"
    }
}

struct CachedRepresentatives: Codable {
    let response: RepresentativesResponse
    let fetchedAt: Date

    var isStale: Bool {
        Date().timeIntervalSince(fetchedAt) > 30 * 24 * 60 * 60 // 30 days
    }
}
