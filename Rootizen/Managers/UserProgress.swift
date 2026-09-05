//
//  UserProgress.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/4/26.
//

import SwiftUI

@Observable
final class UserProgress{
    
    private(set) var userStreak: Int
    private(set) var userXPoints: Int
    
    init(){
        self.userStreak = 0
        self.userXPoints = 0
    }
    
    
    func incrementStreak(){
        
    }
    
    func incrementXpoints( points: Int ){
        self.userXPoints += points
    }
    
    
    
}
