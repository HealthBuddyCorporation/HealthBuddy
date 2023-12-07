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
    @Published var toyList :[Toy] = load("toyList.json")
    
    func handleDrop(_ items: [Droppable]) -> Bool{
        guard let item = items.first else {
            return false
        }
        switch item{
        case .none: return false
        case .food(let food): 
            print( food.self )
            if let index = foodList.firstIndex(of: food) {
                feed(foodList[index])
            }
            return true
        case .cleaner(let cleaner): 
            if let index = cleanerList.firstIndex(of: cleaner) {
                cleansed(cleanerList[index])
            }
            return true
        case .toy(let toy):
            if let index = toyList.firstIndex(of: toy) {
                play(toyList[index])
            }
            return true
        }
    }
}
