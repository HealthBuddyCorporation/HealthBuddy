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
    
    func createUser(_ user: UserModel){
        print("Entering db call")
        self.ref.child("MainDB/Users/\(user.id)").setValue(["username": user.username, "profilePicture": user.profilPicPath, "email": user.email])
        //self.ref.child("MainDB/Users/\(user.id)").child("friendlist").setValue(["6UoXsKaCqPVH4OCzG1r0HqKOZgC3", "N5anmGglTaXp7VghpZcuhbgcw0t1", "lZ2HLJ94oYN7edVBbEOAGQ9f8z13"])
    }
}
