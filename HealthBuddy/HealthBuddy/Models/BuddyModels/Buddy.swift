//
//  Buddy.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

class Buddy :Hashable, Codable, Identifiable{
    var id :Int
    var hp :Double
    var maxHP :Double
    var nutrition :Double
    var hygiene :Double
    var weight :Double
    var happiness :Double
    var currentXP :Int
    var neededXP :Int
    var isAlive :Bool
}

extension Buddy {
    static func == (lhs: Buddy, rhs: Buddy) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
