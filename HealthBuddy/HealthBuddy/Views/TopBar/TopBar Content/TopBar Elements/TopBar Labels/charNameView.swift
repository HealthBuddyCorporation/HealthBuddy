//
//  charNameView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:20      *
//  *************************************************************************************
//

import SwiftUI

struct charNameView: View {
    var name :String
    var body: some View {
        
        Text(name)
            .font(.title2)
            .foregroundColor(.black)
            .offset(y: -60)
            .id("charName")
    }
}

#Preview {
    charNameView(name: "Plopty")
}
