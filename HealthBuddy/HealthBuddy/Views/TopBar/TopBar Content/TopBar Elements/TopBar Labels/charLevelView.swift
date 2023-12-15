//
//  charLevelView.swift
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

struct charLevelView: View {
    var level :Int
    var body: some View {
        
        Text("LvL: \(level)")
            .foregroundColor(.black)
            .offset(y: -60)
            .id("charLvl")
    }
}

#Preview {
    charLevelView(level: 3)
}
