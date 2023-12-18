//
//  UserModel.swift
//  HealthBuddy
//
//  Created by Student04 on 15/12/2023.
//

import Foundation

struct UserModel :Identifiable, Codable, Equatable {
    var id: String
    var username: String
    var email: String
    var profilePicture :String
    var score :Int
    var coins :Int
    var buddys :Int
    
    init(id: String, username: String, email: String, profilePicture: String, score: Int, coins: Int, buddys: Int) {
        self.id = id
        self.username = username
        self.email = email
        self.profilePicture = profilePicture
        self.score = score
        self.coins = coins
        self.buddys = buddys
    }
}
