//
//  CharacterView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:12      *
//  *************************************************************************************
//

import SwiftUI
import RiveRuntime

struct CharacterView: View {
    var body: some View {
        RiveViewModel(
            webURL: "https://cdn.rive.app/animations/off_road_car_v7.riv"
        ).view()
    }
}

#Preview {
    CharacterView()
}
