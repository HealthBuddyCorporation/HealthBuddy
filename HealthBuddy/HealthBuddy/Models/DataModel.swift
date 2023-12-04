//
//  DataModel.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

class DataModel :ObservableObject {
    @Published var buddy :Buddy = load("buddyData.json")
    @Published var foodList :[Food] = load("foodList.json")
    @Published var cleanerList :[Cleaner] = load("cleaningList.json")
    
    func handleDrop(_ items: [Droppable]) -> Bool{
        guard let item = items.first else {
            return false
        }
        switch item{
        case .none: return false
        case .food(let food): 
            print( food.self )
            if let index = foodList.firstIndex(of: food) {
                print("\(foodList[index].name) : \(foodList[index].quantity)")
                feed(foodList[index])
                foodList[index].quantity -= 1
                print(buddy.nutrition)
                print("\(foodList[index].name) : \(foodList[index].quantity)")
            }
            return true
        case .cleaner(let cleaner): 
            if let index = cleanerList.firstIndex(of: cleaner) {
                print("\(cleanerList[index].name) : \(cleanerList[index].quantity)")
                cleansed(cleanerList[index])
                cleanerList[index].quantity -= 1
                print(buddy.hygiene)
                print("\(cleanerList[index].name) : \(cleanerList[index].quantity)")
            }
            return true
        }
    }
}
