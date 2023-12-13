//
//  charNameView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//

import SwiftUI

struct charNameView: View {
    var name :String
    var body: some View {
        
        Text(name)
            .font(.title2)
            .foregroundColor(.black)
            .offset(y: -60)
            .id("charName")
    }
}

#Preview {
    charNameView(name: "Plopty")
}
