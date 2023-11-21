//
//  Buddy+Food.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

extension Buddy{
    func feed(_ food :Food){
        if(food.id == 100){
            hp = maxHP
            nutrition = 100
            hygiene = 100
            weight = 50
            happiness = 100
        }
        else{
            nutrition += food.foodValue
            if(nutrition >= 100){
                weight += food.weightValue * 2
                hp -= nutrition - 100
            }else{
                weight += food.weightValue
            }
            happiness += food.happinessValue
            if(happiness > 100){
                happiness = 100
            }
            food.quantity -= 1
        }
    }
}
