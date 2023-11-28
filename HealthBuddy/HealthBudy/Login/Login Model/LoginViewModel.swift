//
//  LoginModel.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 04/10/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isUsernameValid: Bool = true
    @Published var isPasswordValid: Bool = true

    // Fonction pour valider un email avec une regex
    func validateEmail() {
        // ... Votre logique de validation d'email ici
        // Exemple simple : vérifier si l'email contient un @
        isUsernameValid = username.contains("@")
    }

    // Fonction pour valider un mot de passe avec une regex
    func validatePassword() {
        // ... Votre logique de validation de mot de passe ici
        // Exemple simple : vérifier si le mot de passe a au moins 10 caractères
        isPasswordValid = password.count >= 10
    }

    // Fonction pour effectuer la connexion
    func login() {
        // Vérification des champs avant de procéder à la connexion
        if isUsernameValid && isPasswordValid {
            // Connexion réussie, faites ce que vous devez faire ici

            // Exemple : Afficher le nom d'utilisateur à un autre endroit de l'application
            print("Logged in as: \(username)")
        }
    }
}
