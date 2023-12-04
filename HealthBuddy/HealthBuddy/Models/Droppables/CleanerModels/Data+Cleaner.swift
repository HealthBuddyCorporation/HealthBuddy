//
//  Data+Cleaner.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import Foundation

extension DataModel{
    func cleansed(_ cleaner :Cleaner){
        if(cleaner.id == 100){
            buddy.hp = buddy.maxHP
            buddy.nutrition = 100
            buddy.hygiene = 100
            buddy.weight = 50
            buddy.happiness = 100
        }
        else{
            buddy.hygiene += cleaner.cleanValue
            if(buddy.hygiene > 100){
                buddy.hygiene = 100
            }
            buddy.happiness += cleaner.happinessValue
            if(buddy.happiness > 100){
                buddy.happiness = 100
            }
            buddy.hp += cleaner.healthValue
            if(buddy.hp > buddy.maxHP){
                buddy.hp = 100
            }
        }
    }
}
