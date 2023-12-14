//
//  FBLoginService.swift
//  HealthBuddy
//
//  Created by Student04 on 14/12/2023.
//

import Foundation
import FirebaseAuth

class FBLoginService{
    
    static let instance = FBLoginService()
    
    func signUp(_ email :String, _ password :String){
        guard !email.isEmpty, !password.isEmpty, isEmailValid(email), isPasswordValid(password) else {
            return
        }
        Task{
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("success")
                print(returnedUserData)
            } catch {
                print("error: \(error)")
            }
        }
    }
    
    func signIn(_ email :String, _ password :String) -> Bool{
        var result = true
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if let ok = authResult?.user{
                result = true
            }
        }
        return result
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
