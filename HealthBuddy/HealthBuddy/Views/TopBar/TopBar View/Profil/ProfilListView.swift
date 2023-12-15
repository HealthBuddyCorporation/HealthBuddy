//
//  ProfiilListView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:25      *
//  *************************************************************************************
//

import SwiftUI

struct ProfilListView: View {
    var body: some View {
        VStack{
            List {
                Text("Élément 1")
                Text("Élément 2")
                Text("Élément 3")
                Text("Élément 4")
                Text("Élément 5")
                Text("Élément 6")
                Text("Élément 7")
                Text("Élément 8")
                Text("Élément 9")
                Text("Élément 10")
            }
        }.scrollContentBackground(.hidden)
    }
}

#Preview {
    ProfilListView()
}
