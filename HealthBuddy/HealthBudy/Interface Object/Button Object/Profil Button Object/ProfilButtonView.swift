//
//  ProfilButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct ProfilButtonView: View {
    var body: some View {
        VStack {
            /// Rectangle1b concerne le bouton profil
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 50, height: 50)
                .offset(y: -60)
                .offset(x: 60)
                .id("Rectangle1b")
        }
    }
}

#Preview {
    ProfilButtonView()
}
