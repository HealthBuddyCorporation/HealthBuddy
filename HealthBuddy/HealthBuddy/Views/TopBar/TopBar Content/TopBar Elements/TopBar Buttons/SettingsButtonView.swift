//
//  SettingsButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:21      *
//  *************************************************************************************
//

import SwiftUI

struct SettingsButtonView: View {
    @State private var isSettingsViewActive = false

       var body: some View {
           Button(action: {
               isSettingsViewActive.toggle()
           }) {
               Image(systemName: "gear.circle.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 30, height: 30)
                   .foregroundColor(.white)
                   .padding(2)
                   .background(Color.gray)
                   .clipShape(Circle())
           }
           .fullScreenCover(isPresented: $isSettingsViewActive) {
               SettingsView(isActive: $isSettingsViewActive)
           }
       }
   }

#Preview {
    SettingsButtonView()
}
