//
//  Data+Cleaner.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import Foundation

extension DataModel{
    func handleCleanDrop(_ cleaners: [Cleaner]) -> Bool{
        guard let cleaner = cleaners.first else {
            return false
        }
        if let index = cleanerList.firstIndex(of: cleaner) {
            print("\(cleanerList[index].name) : \(cleanerList[index].quantity)")
            cleansed(cleanerList[index])
            cleanerList[index].quantity -= 1
            print(buddy.hygiene)
            print("\(cleanerList[index].name) : \(cleanerList[index].quantity)")
        }
        return true
    }
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
