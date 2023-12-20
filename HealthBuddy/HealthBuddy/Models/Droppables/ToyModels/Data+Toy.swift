//
//  Data+Toy.swift
//  HealthBuddy
//
//  Created by Student04 on 07/12/2023.
//

import Foundation

extension DataModel{
    func play(_ toy :Toy){
        guard let user = LoginViewModel.instance.session else { return }
        if(toy.id == 100){
            buddy.hp = buddy.maxHP
            buddy.nutrition = 100
            buddy.hygiene = 100
            buddy.weight = 50
            buddy.happiness = 100
        }
        else{
            buddy.hygiene += toy.cleanValue
            if(buddy.hygiene <= 0){
                buddy.hygiene = 0
            }
            buddy.happiness += toy.happinessValue
            if(buddy.happiness > 100){
                buddy.happiness = 100
            }
            buddy.hp += toy.healthValue
            if(buddy.hp > buddy.maxHP){
                buddy.hp = 100
            }
        }
        if let index = toyList.firstIndex(of: toy){
            toyList[index].quantity -= 1
            FBDatabase.instance.ref.child("MainDB/Inventories/\(user.uid)/toylist/\(toy.id)").setValue(toy.toDictionary)
        }
    }
}
