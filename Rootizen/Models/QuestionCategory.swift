//
//  QuestionCategory.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/20/26.
//
import SwiftUI

enum QuestionCategory: String, CaseIterable, Codable, Identifiable {
    case principlesOfGovernment = "Principles of American Government"
    case principlesofAmericanDemocracy = "Principles of American Democracy"
    case systemOfGovernment = "System of Government"
    case rightsAndResponsibilities = "Rights and Responsibilities"
    case colonialPeriod = "Colonial Period and Independence"
    case history1800s = "1800s History"
    case recentHistory = "Recent American History"
    case geography = "Geography"
    case symbols = "Symbols"
    case holidays = "Holidays"

    var id: String { rawValue }
}

enum CategoryIconName: String, Identifiable{
    
    case principlesOfGovernment = "building.columns"
    case principlesofAmericanDemocracy = "person.2"
    case systemOfGovernment = "building.columns.circle"
    case rightsAndResponsibilities = "checklist"
    case colonialPeriod = "scroll"
    case history1800s = "clock"
    case recentHistory = "person.building.classical"
    case geography = "globe.americas"
    case symbols = "flag"
    case holidays = "calendar"
    
    var id: String { rawValue }
}

// MARK: -- Used when Plus version, to show the category questions accuracy as feedback

struct CategoryAccuracyItem: Identifiable {
    let id = UUID()
    let category: QuestionCategory
    let correct: Int
    let total: Int
 
    var accuracy: Double { total > 0 ? Double(correct) / Double(total) : 0 }
}

