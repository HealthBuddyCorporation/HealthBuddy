//
//  CharacterView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
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
