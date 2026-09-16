//
//  RepresentativesService.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/15/26.
//

import SwiftUI

@Observable
class RepresentativesService {
    private let cacheKeyPrefix = "reps_cache_"
    private let functionURL = URL(string: "https://nxwvpyxnmyhkwugiynmf.supabase.co/functions/v1/get-representatives")!
    private let publishableKey = "sb_publishable_AUias-VS86cNi2Fb37tSJQ_tDNzXgA2"

    var currentResult: RepresentativesResponse?
    var isLoading = false
    var errorMessage: String?

    func fetchRepresentatives(forZip zip: String) async {
        // 1. Check cache first
        if let cached = loadFromCache(zip: zip), !cached.isStale {
            currentResult = cached.response
            return
        }

        // 2. Cache miss or stale - hit the network
        isLoading = true
        errorMessage = nil

        do {
            var request = URLRequest(url: functionURL)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue(publishableKey, forHTTPHeaderField: "apikey")
            request.httpBody = try JSONEncoder().encode(["zip": zip])

            let (data, response) = try await URLSession.shared.data(for: request)

            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                errorMessage = "Couldn't load representatives. Try again."
                isLoading = false
                return
            }

            let decoded = try JSONDecoder().decode(RepresentativesResponse.self, from: data)
            currentResult = decoded
            saveToCache(zip: zip, response: decoded)

        } catch {
            errorMessage = "Something went wrong: \(error.localizedDescription)"
        }

        isLoading = false
    }

    private func loadFromCache(zip: String) -> CachedRepresentatives? {
        guard let data = UserDefaults.standard.data(forKey: cacheKeyPrefix + zip) else { return nil }
        return try? JSONDecoder().decode(CachedRepresentatives.self, from: data)
    }

    private func saveToCache(zip: String, response: RepresentativesResponse) {
        let cached = CachedRepresentatives(response: response, fetchedAt: Date())
        if let data = try? JSONEncoder().encode(cached) {
            UserDefaults.standard.set(data, forKey: cacheKeyPrefix + zip)
        }
    }
}
