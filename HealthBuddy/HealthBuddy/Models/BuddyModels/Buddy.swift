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
    var neededXp :Int
    var birthdate :String
    var lastUse :String
    var isAlive :Bool
    
    init(name :String){
        self.id = 1
        self.name = name
        self.hp = 100
        self.maxHP = 100
        self.nutrition = 100.0
        self.hygiene = 100.0
        self.weight = 50.0
        self.happiness = 100
        self.level = 1
        self.currentXP = 0
        self.neededXp = 100
        self.birthdate = dateFormat(Date())
        self.lastUse = dateFormat(Date())
        self.isAlive = false
    }
}

extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else {
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
