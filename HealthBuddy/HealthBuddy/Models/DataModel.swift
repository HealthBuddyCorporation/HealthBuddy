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
    
}
