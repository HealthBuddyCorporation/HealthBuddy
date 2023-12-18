//
//  BackgroundBarView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 13/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:15      *
//  *************************************************************************************
//

import SwiftUI

struct BackgroundBarView: View {
    var body: some View {
        BlurEffect(style: .systemChromeMaterialDark)
            .frame(width: 400, height: 50)
    }
}

#Preview {
    BackgroundBarView()
}
