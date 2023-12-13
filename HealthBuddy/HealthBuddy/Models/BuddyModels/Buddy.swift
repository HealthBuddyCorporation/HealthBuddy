//
//  Buddy.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

struct Buddy :Hashable, Codable, Identifiable{
    var id :Int
    var name : String
    var hp :Double
    var maxHP :Double
    var nutrition :Double
    var hygiene :Double
    var weight :Double
    var happiness :Double
    var level :Int
    var currentXP :Int
    var neededXP :Int
    var isAlive :Bool
    
}
