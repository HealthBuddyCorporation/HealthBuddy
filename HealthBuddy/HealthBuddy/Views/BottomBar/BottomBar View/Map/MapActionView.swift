//
//  MapAction<view.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 06/12/2023.
//

import SwiftUI

struct MapActionView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 430, height: 250)
                .foregroundColor(.black.opacity(0.6))
                .position(x:200 , y:88)
        }
    }
}

#Preview {
    MapActionView()
}
