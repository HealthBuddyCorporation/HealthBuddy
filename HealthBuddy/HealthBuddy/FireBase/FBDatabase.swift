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
        self.ref = Database.database().reference()
    }
}
