//
//  charLevelView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//

import SwiftUI

struct charLevelView: View {
    var body: some View {
        Text("Character Level")
            .background(Color.black)
            .foregroundColor(.white)
            .offset(y: -60)
            .id("charLvl")
    }
}

#Preview {
    charLevelView()
}
