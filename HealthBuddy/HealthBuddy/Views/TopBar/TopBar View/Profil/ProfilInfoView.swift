//
//  ProfilInfoView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:24      *
//  *************************************************************************************
//

import SwiftUI

struct ProfilInfoView: View {
    var user :UserModel

    var body: some View {
        VStack {
            Text("\(user.username)")
                .padding()
            
            HStack {
                Text("Score: \(user.score)")
                    .offset(x: -50)
                Text("Région: Liège")
                    .offset(x: 50)
            }
        }
    }
}

