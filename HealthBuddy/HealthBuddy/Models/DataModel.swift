//
//  DataModel.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

class DataModel :ObservableObject {
    @Published var user :UserModel = UserModel(id: "not found", username: "not found", email: "not found", profilePicture: "", score: 0, coins: 0, buddys: 0)
    
    @Published var buddy :Buddy = Buddy(name: "Default")
    @Published var foodList :[Food] = load("foodList.json")
    @Published var cleanerList :[Cleaner] = load("cleaningList.json")
    @Published var toyList :[Toy] = load("toyList.json")
    
    
    @Published var userList :[UserModel] = []
    @Published var scoreList :[UserModel] = []
    @Published var buddyList :[Buddy] = []
    
    @Published var currentAnimation = "BigManIdle"
    
    @Published var makeNewBud :Bool = false
    
    func getUser(){
        guard let user = LoginViewModel.instance.session else { return }
        FBDatabase.instance.ref.child("MainDB/Users/\(user.uid)").observe(.value){ snapshot in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else {return}
            do{
                self.user = try JSONDecoder().decode(UserModel.self, from: data)
            }catch{
                print("NO USER!")
                print(error)
            }
        }
    }
    func getUserList(){
        FBDatabase.instance.ref.child("MainDB/Users").observe(.childAdded){ snapshot, _ in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else { return }
            do{
                let temp = try JSONDecoder().decode(UserModel.self, from: data)
                self.userList.append(temp)
                self.scoreList = self.userList.sorted(by: ({ $0.score >= $1.score}))
                print(self.scoreList)
            }catch{
                print("Not listening to new user")
            }
        }
    }
    func getBuddy(){
        guard let user = LoginViewModel.instance.session else { return }
        FBDatabase.instance.ref.child("MainDB/Buddys/\(user.uid)").observe(.value){ snapshot in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else {return}
            do{
                self.buddy = try JSONDecoder().decode(Buddy.self, from: data)
            }catch{
                print(error)
            }
        }
    }
    func updateBuddy(){
        guard let user = LoginViewModel.instance.session else { return }
        if(buddy.weight >= 80){
            currentAnimation = "BigManFat"
        }
        if(buddy.nutrition <= 40){
            currentAnimation = "BigManHungry"
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.currentAnimation = "BigManIdle"
            }
        }
        buddy.lastUse = dateFormat(Date())
        FBDatabase.instance.ref.child("MainDB/Buddys/\(user.uid)").setValue(buddy.toDictionary)
    }
    
    func getInventoriesList(){
        guard let user = LoginViewModel.instance.session else { return }
        FBDatabase.instance.ref.child("MainDB/Inventories/\(user.uid)/foodlist").observe(.value){ snapshot in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else {return}
            do{
                self.foodList = try JSONDecoder().decode([Food].self, from: data)
            }catch{
                print(error)
            }
        }
        FBDatabase.instance.ref.child("MainDB/Inventories/\(user.uid)/cleanerlist").observe(.value){ snapshot in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else {return}
            do{
                self.cleanerList = try JSONDecoder().decode([Cleaner].self, from: data)
            }catch{
                print(error)
            }
        }
        FBDatabase.instance.ref.child("MainDB/Inventories/\(user.uid)/toylist").observe(.value){ snapshot in
            guard let data = try? JSONSerialization.data(withJSONObject: snapshot.value as Any) else {return}
            do{
                self.toyList = try JSONDecoder().decode([Toy].self, from: data)
            }catch{
                print(error)
            }
        }
    }
    
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
    
    func StatOverTime(){
        if(buddy.nutrition <= 2){
            buddy.nutrition = 0
            buddy.hp -= 2.0
        }else{
            buddy.nutrition -= 2
        }
        if(buddy.hygiene <= 2){
            buddy.hygiene = 0
            buddy.hp -= 2.0
        }else{
            buddy.hygiene -= 2
        }
        if(buddy.happiness <= 2){
            buddy.happiness = 0
            buddy.hp -= 2.0
        }else{
            buddy.happiness -= 2
        }
        if(buddy.hp <= 0){
            buddy.hp = 0
            buddy.isAlive = false
        }
    }
}
