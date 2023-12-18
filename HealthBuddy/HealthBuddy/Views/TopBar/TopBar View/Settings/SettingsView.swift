//
//  SettingsView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:35      *
//  *************************************************************************************
//

import SwiftUI

struct SettingsView: View {
    @Binding var isActive: Bool
    var body: some View {
        ZStack{
            HStack{
                ZStack{
                    Button("Close") {
                        isActive = false
                    }.padding(EdgeInsets(top: -380, leading: -180, bottom: 0, trailing: 0))
                    
                    VStack{
                        SettingsInfoView()
                        SettingsListView()
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    SettingsView(isActive: .constant(true))
}
