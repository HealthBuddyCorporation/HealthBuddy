//
//  Data+Food.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import Foundation

extension DataModel{
    func feed(_ food :Food){
        if(food.id >= 100){
            if(food.id == 100){
                buddy.hp = buddy.maxHP
                buddy.nutrition = 100
                buddy.hygiene = 100
                buddy.weight = 50
                buddy.happiness = 100
            }else{
                buddy.hp = 0
            }
        }
        else{
            buddy.nutrition += food.foodValue
            if(buddy.nutrition >= 100){
                buddy.weight += food.weightValue * 2
                buddy.hp -= buddy.nutrition - 100
                buddy.nutrition = 100
                if (buddy.hp <= 0){
                    buddy.hp = 0
                }
            }else{
                buddy.weight += food.weightValue
            }
            buddy.happiness += food.happinessValue
            if(buddy.happiness > 100){
                buddy.happiness = 100
            }
        }
        if let index = foodList.firstIndex(of: food){
            foodList[index].quantity -= 1
        }
    }
}
