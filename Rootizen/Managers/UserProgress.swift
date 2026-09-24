//
//  UserProgress.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

// MARK: -- XP Point
// XP Point in Quiz and Flash 2 points for each question answered correctly.
//If user holds a strack for 3 days they gain 10XP extra  every other 3 streak days.

// MARK: -- Accuracy per category


@Observable
final class UserProgress{

    private(set) var userXPoints: Int
    private(set) var userStreak: Int
    private(set) var categoryAccuracy: CGFloat
    
    init(){
        self.userXPoints = 0
        self.userStreak = 0
        self.categoryAccuracy = 0.0
    }
    
    
    func incrementXpoints( points: Int ){
        self.userXPoints += points
    }
    
    
    
}
