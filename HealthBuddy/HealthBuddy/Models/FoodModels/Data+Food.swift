//
//  Data+Food.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import Foundation

extension DataModel{
    func handleFoodDrop(_ foods: [Food]) -> Bool{
        guard let food = foods.first else {
            return false
        }
        if let index = foodList.firstIndex(of: food) {
            print("\(foodList[index].name) : \(foodList[index].quantity)")
            feed(foodList[index])
            foodList[index].quantity -= 1
            print(buddy.nutrition)
            print("\(foodList[index].name) : \(foodList[index].quantity)")
        }
        return true
    }
    func feed(_ food :Food){
        if(food.id == 100){
            buddy.hp = buddy.maxHP
            buddy.nutrition = 100
            buddy.hygiene = 100
            buddy.weight = 50
            buddy.happiness = 100
        }
        else{
            buddy.nutrition += food.foodValue
            if(buddy.nutrition >= 100){
                buddy.weight += food.weightValue * 2
                buddy.hp -= buddy.nutrition - 100
            }else{
                buddy.weight += food.weightValue
            }
            buddy.happiness += food.happinessValue
            if(buddy.happiness > 100){
                buddy.happiness = 100
            }
        }
    }
}
