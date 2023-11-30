//
//  charNameView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//

import SwiftUI

struct charNameView: View {
    var body: some View {
        Text("Tamagochi Name")
            .background(Color.black)
            .foregroundColor(.white)
            .offset(y: -60)
            .id("charName")
    }
}

#Preview {
    charNameView()
}