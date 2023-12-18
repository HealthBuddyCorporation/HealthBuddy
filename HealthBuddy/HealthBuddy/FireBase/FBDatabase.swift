//
//  FBDatabase.swift
//  HealthBuddy
//
//  Created by Student04 on 15/12/2023.
//

import Foundation
import Firebase

class FBDatabase{
    static let instance = FBDatabase()
    
    var ref: DatabaseReference!
    
    init(){
        Database.database().isPersistenceEnabled = true
        self.ref = Database.database().reference()
        ref.keepSynced(true)
    }
    
    func createUser(_ user: UserModel){
        self.ref.child("MainDB/Users/\(user.id)").setValue(["id":user.id, "username": user.username, "profilePicture": user.profilPicPath, "email": user.email, "coins": 100, "buddys": 100, "score": 0])
        self.ref.child("MainDB/Inventories/\(user.id)").child("foodlist").setValue([
            ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
            ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
            ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
            ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
            ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
            ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
            ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
        self.ref.child("MainDB/Inventories/\(user.id)").child("cleanerlist").setValue([
            ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
            ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
            ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
            ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
            ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
            ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
            ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
            ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
            ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
        self.ref.child("MainDB/Inventories/\(user.id)").child("toylist").setValue([
            ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
            ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
            ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
            ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
            ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
            ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
            ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
    }
    func createBuddy(_ buddy: Buddy){
        guard let user = LoginViewModel.instance.session else { return }
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "YY/MM/dd, HH:mm"
        
        self.ref.child("MainDB/Buddys/\(user.uid)").setValue(["id": 1, "name": buddy.name, "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 1, "currentXP": 0, "neededXp": 100, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
        
    }
}
