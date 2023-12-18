//
//  LoginModel.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 04/10/2023.
//

import Foundation
import FirebaseAuth

class LoginViewModel :ObservableObject{
    
    static var instance = LoginViewModel()
    @Published var session :FirebaseAuth.User?
    
    init() {
        let user = Auth.auth().currentUser
        if let user = user {
            session = user
        } else {
            session = nil
        }
    }
    
    func signUp(_ username :String, _ email :String, _ password :String, _ profilePicture :String){

        guard !email.isEmpty, !password.isEmpty, isEmailValid(email), isPasswordValid(password) else {
            return
        }
        Task{
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                let user = UserModel(id: returnedUserData.uid, username: username, email: returnedUserData.email!, profilePicture: profilePicture, score: 0, coins: 100, buddys: 100)
                print("user id: \(user.id)")
                FBDatabase.instance.createUser(user)
            } catch {
                print("error: \(error)")
            }
        }
    }
    
    func signIn(_ email :String, _ password :String){
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error != nil {
                print("\(error)")
            } else {
                guard let uid = authResult?.user.uid,
                      let email = authResult?.user.email else {
                    return
                }
                print("\(authResult?.user.email ?? "")")
                self.session = authResult?.user
            }
        }
    }
    
    func signOut(){
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            session = nil
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
    func isEmailValid(_ em :String) -> Bool{
        let validator = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let checker = NSPredicate(format:"SELF MATCHES %@", validator)
        print("email: \(checker.evaluate(with: em))")
        return checker.evaluate(with: em)
    }
    func isPasswordValid(_ pw :String) -> Bool{
        print(pw)
        let validator = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        
        let checker = NSPredicate(format:"SELF MATCHES %@", validator)
        print("password: \(checker.evaluate(with: pw))")
        return checker.evaluate(with: pw)
    }
}

// Luigi@gmail.com GreNinja23$
