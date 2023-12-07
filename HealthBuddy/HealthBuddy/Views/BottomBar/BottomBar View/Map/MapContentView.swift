//
//  MapContentView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 06/12/2023.
//

import SwiftUI

struct MapContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 380, height: 380)
                .foregroundColor(.black.opacity(0.4))
                .position(x:215, y:20)
        }
    }
}

#Preview {
    MapContentView()
}
