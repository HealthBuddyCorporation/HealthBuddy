//
//  SettingsInfoView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:35      *
//  *************************************************************************************
//

import SwiftUI

struct SettingsInfoView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 430, height:100)
                .foregroundColor(.clear)
                .padding(EdgeInsets(top: -439, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    SettingsInfoView()
}
