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
    @ObservedObject var userData: UserData

    var body: some View {
        VStack {
            Text("\(userData.username)")
                .padding()
            
            HStack {
                Text("User Score")
                    .offset(x: -50)
                Text("User location")
                    .offset(x: 50)
            }
        }
    }
}

