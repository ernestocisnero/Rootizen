//
//  QuestionCategory.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/20/26.
//

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
