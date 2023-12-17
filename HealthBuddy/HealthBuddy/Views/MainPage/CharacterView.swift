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
        
        RiveViewModel(fileName: "BigManFaim").view()
            .frame(width: 600, height: 600)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
            .ignoresSafeArea()
        
    }
}

#Preview {
    CharacterView()
}
