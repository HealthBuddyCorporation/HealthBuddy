//
//  InitialDBFile.swift
//  HealthBuddy
//
//  Created by user251261 on 12/18/23.
//

//import Foundation

//func initDB(){
//    let date = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "YY/MM/dd, HH:mm"
//    
//    print("initial db creation")
//    //MARK Duc files
//    self.ref.child("MainDB/Users/iWbO6rVE3fdLSyid15hAKkeMqek1").setValue(["id":"iWbO6rVE3fdLSyid15hAKkeMqek1", "username": "DuckyDuke", "profilePicture": "duc.png", "email": "duc@gmail.com", "coins": 100, "buddys": 100, "score": 1000])
//    self.ref.child("MainDB/Buddys/iWbO6rVE3fdLSyid15hAKkeMqek1").setValue(["id": 1, "name": "Wukong", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/iWbO6rVE3fdLSyid15hAKkeMqek1").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/iWbO6rVE3fdLSyid15hAKkeMqek1").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/iWbO6rVE3fdLSyid15hAKkeMqek1").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    ///
//    /// Valerian files
//    self.ref.child("MainDB/Users/SSHwSQc7yKeKu5dDAoeDCvLKp1w2").setValue(["id": "SSHwSQc7yKeKu5dDAoeDCvLKp1w2", "username": "Valou", "profilePicture": "valerian.png", "email": "valerian@gmail.com", "coins": 100, "buddys": 100, "score": 1100])
//    self.ref.child("MainDB/Buddys/SSHwSQc7yKeKu5dDAoeDCvLKp1w2").setValue(["id": 1, "name": "The Lost Dog", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/SSHwSQc7yKeKu5dDAoeDCvLKp1w2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/SSHwSQc7yKeKu5dDAoeDCvLKp1w2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/SSHwSQc7yKeKu5dDAoeDCvLKp1w2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    ///
//    /// Laurent files
//    self.ref.child("MainDB/Users/rNkfFqOiSSbhZulL2wgVWHFm2eJ2").setValue(["id": "rNkfFqOiSSbhZulL2wgVWHFm2eJ2", "username": "Baldy", "profilePicture": "laurent.png", "email": "laurent@gmail.com", "coins": 100, "buddys": 100, "score": 1200])
//    self.ref.child("MainDB/Buddys/rNkfFqOiSSbhZulL2wgVWHFm2eJ2").setValue(["id": 1, "name": "Big Bad Bald", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/rNkfFqOiSSbhZulL2wgVWHFm2eJ2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/rNkfFqOiSSbhZulL2wgVWHFm2eJ2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/rNkfFqOiSSbhZulL2wgVWHFm2eJ2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Tony file
//    self.ref.child("MainDB/Users/reReVapt8JRtBPQCIA9lpFXzDCD3").setValue(["id": "reReVapt8JRtBPQCIA9lpFXzDCD3", "username": "Itsame", "profilePicture": "tony.png", "email": "tony@gmail.com", "coins": 100, "buddys": 100, "score": 1300])
//    self.ref.child("MainDB/Buddys/reReVapt8JRtBPQCIA9lpFXzDCD3").setValue(["id": 1, "name": "Izzy Pizzy", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/reReVapt8JRtBPQCIA9lpFXzDCD3").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/reReVapt8JRtBPQCIA9lpFXzDCD3").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/reReVapt8JRtBPQCIA9lpFXzDCD3").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Cathy files
//    self.ref.child("MainDB/Users/Fs7BAXccaCRWlLUQ5OEIEi7n6qk1").setValue(["id": "Fs7BAXccaCRWlLUQ5OEIEi7n6qk1", "username": "TechniCath", "profilePicture": "cathy.png", "email": "cathy@gmail.com", "coins": 100, "buddys": 100, "score": 1400])
//    self.ref.child("MainDB/Buddys/Fs7BAXccaCRWlLUQ5OEIEi7n6qk1").setValue(["id": 1, "name": "Blondie Barbie", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/Fs7BAXccaCRWlLUQ5OEIEi7n6qk1").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/Fs7BAXccaCRWlLUQ5OEIEi7n6qk1").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/Fs7BAXccaCRWlLUQ5OEIEi7n6qk1").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// David files
//    self.ref.child("MainDB/Users/WqFnm1Pkg6OCLPPc5tzoEoltO3R2").setValue(["id": "WqFnm1Pkg6OCLPPc5tzoEoltO3R2", "username": "NeoDavid", "profilePicture": "david.png", "email": "david@gmail.com", "coins": 100, "buddys": 100, "score": 1500])
//    self.ref.child("MainDB/Buddys/WqFnm1Pkg6OCLPPc5tzoEoltO3R2").setValue(["id": 1, "name": "Big Pixel Guy", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/WqFnm1Pkg6OCLPPc5tzoEoltO3R2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/WqFnm1Pkg6OCLPPc5tzoEoltO3R2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/WqFnm1Pkg6OCLPPc5tzoEoltO3R2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Damon files
//    self.ref.child("MainDB/Users/ezXGNu4eUuSUIBeMfuEcmzXcZEF2").setValue(["id":"ezXGNu4eUuSUIBeMfuEcmzXcZEF2", "username": "Doraemon", "profilePicture": "damon.png", "email": "damon@gmail.com", "coins": 100, "buddys": 100, "score": 1600])
//    self.ref.child("MainDB/Buddys/ezXGNu4eUuSUIBeMfuEcmzXcZEF2").setValue(["id": 1, "name": "Robèse Pierre ", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/ezXGNu4eUuSUIBeMfuEcmzXcZEF2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/ezXGNu4eUuSUIBeMfuEcmzXcZEF2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/ezXGNu4eUuSUIBeMfuEcmzXcZEF2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Raph files
//    self.ref.child("MainDB/Users/cklwYJRckyeBo6DWwYU2A8s3I4I2").setValue(["id":"cklwYJRckyeBo6DWwYU2A8s3I4I2", "username": "RaphLaCasse", "profilePicture": "raph.png", "email": "raph@gmail.com", "coins": 100, "buddys": 100, "score": 1700])
//    self.ref.child("MainDB/Buddys/cklwYJRckyeBo6DWwYU2A8s3I4I2").setValue(["id": 1, "name": "Mac Adam", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/cklwYJRckyeBo6DWwYU2A8s3I4I2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/cklwYJRckyeBo6DWwYU2A8s3I4I2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/cklwYJRckyeBo6DWwYU2A8s3I4I2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Roman files
//    self.ref.child("MainDB/Users/tUhPqIB6rGc606yrZNeq8NiOM8q1").setValue(["id":"tUhPqIB6rGc606yrZNeq8NiOM8q1", "username": "Romanovich", "profilePicture": "roman.png", "email": "roman@gmail.com", "coins": 100, "buddys": 100, "score": 1800])
//    self.ref.child("MainDB/Buddys/tUhPqIB6rGc606yrZNeq8NiOM8q1").setValue(["id": 1, "name": "Roman le bûcheron", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/tUhPqIB6rGc606yrZNeq8NiOM8q1").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/tUhPqIB6rGc606yrZNeq8NiOM8q1").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/tUhPqIB6rGc606yrZNeq8NiOM8q1").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//    ///
//    /// Luigi files
//    self.ref.child("MainDB/Users/4CTEF0cByzbwKZhc7zwaLt2GC9h2").setValue(["id":"4CTEF0cByzbwKZhc7zwaLt2GC9h2", "username": "Luigini", "profilePicture": "luigi.png", "email": "luigi@gmail.com", "coins": 100, "buddys": 100, "score": 1900])
//    self.ref.child("MainDB/Buddys/4CTEF0cByzbwKZhc7zwaLt2GC9h2").setValue(["id": 1, "name": "Roman le marin", "hp": 100.0, "maxHP": 100.0, "nutrition": 100.0, "hygiene": 100.0, "weight": 50.0, "happiness": 100.0, "level": 3, "currentXP": 20, "neededXp": 120, "isAlive": true, "birthdate": formatter.string(from: date), "lastUse": formatter.string(from: date)])
//    self.ref.child("MainDB/Inventories/4CTEF0cByzbwKZhc7zwaLt2GC9h2").child("foodlist").setValue([
//        ["id": 0, "name": "Carrot", "quantity": 10, "foodValue": 5.0, "weightValue": 2.0, "happinessValue": -4, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Meat", "quantity": 5, "foodValue": 10.0, "weightValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Candy", "quantity": 5, "foodValue": -2.0, "weightValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Omelette", "quantity": 2, "foodValue": 20.0, "weightValue": 7.0, "happinessValue": 5, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Salade Veggie", "quantity": 0, "foodValue": 15.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Ragoût du chef", "quantity": 0, "foodValue": 50.0, "weightValue": 20.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Pizza Vegan", "quantity": 0, "foodValue": 30.0, "weightValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Barbecue", "quantity": 2, "foodValue": 100.0, "weightValue": 40.0, "happinessValue": 100, "price": 10, "isPremium": true],
//        ["id": 101, "name": "Poison", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SuperShroom", "quantity": 10, "foodValue": 0.0, "weightValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/4CTEF0cByzbwKZhc7zwaLt2GC9h2").child("cleanerlist").setValue([
//        ["id": 0, "name": "Sponge", "quantity": 10, "cleanValue": 10.0, "healthValue": 0.0, "happinessValue": -2, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Potion", "quantity": 5, "cleanValue": 0.0, "healthValue": 10.0, "happinessValue": -10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Perfume", "quantity": 2, "cleanValue": 5.0, "healthValue": 5.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 3, "name": "Shower", "quantity": 2, "cleanValue": 20.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Bandage", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": -5, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Steroïd", "quantity": 0, "cleanValue": 0.0, "healthValue": -10.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Proteine shake", "quantity": 0, "cleanValue": 0.0, "healthValue": 5.0, "happinessValue": 0, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Soap", "quantity": 1, "cleanValue": 20.0, "healthValue": 10.0, "happinessValue": 5, "price": 10, "isPremium": true],
//        ["id": 100, "name": "Magic Cream", "quantity": 1, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Sauna", "quantity": 0, "cleanValue": 100.0, "healthValue": 50.0, "happinessValue": 100, "price": 10, "isPremium": true]])
//    self.ref.child("MainDB/Inventories/4CTEF0cByzbwKZhc7zwaLt2GC9h2").child("toylist").setValue([
//        ["id": 0, "name": "GameBoy", "quantity": 10, "cleanValue": -5.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 1, "name": "Cordes", "quantity": 5, "cleanValue": -10.0, "weightValue": -5.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 2, "name": "Casque VR", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": -10.0, "happinessValue": 30, "price": 10, "isPremium": false],
//        ["id": 3, "name": "TV", "quantity": 2, "cleanValue": -10.0, "weightValue": 10.0, "healthValue": 0.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 4, "name": "Vélo", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 5, "name": "Lego", "quantity": 0, "cleanValue": 0.0, "weightValue": 0.0, "healthValue": -10.0, "happinessValue": 10, "price": 10, "isPremium": false],
//        ["id": 6, "name": "Tapis de course", "quantity": 0, "cleanValue": -20.0, "weightValue": -20.0, "healthValue": 5.0, "happinessValue": 20, "price": 10, "isPremium": false],
//        ["id": 7, "name": "Deck Magic", "quantity": 1, "cleanValue": -40.0, "weightValue": 20.0, "healthValue": 0.0, "happinessValue": 30, "price": 10, "isPremium": true],
//        ["id": 8, "name": "Machine de sport", "quantity": 1, "cleanValue": -20.0, "weightValue": -30.0, "healthValue": 10.0, "happinessValue": 20, "price": 10, "isPremium": true],
//        ["id": 100, "name": "SEGA MEGADRIVE", "quantity": 0, "cleanValue": 0.0, "healthValue": 0.0, "happinessValue": 0, "price": 10, "isPremium": true]])
//    /// end
//}
