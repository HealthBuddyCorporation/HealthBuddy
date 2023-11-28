//
//  TopBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        
            /// Cette stack contrôle le contenu de la Top Bar
            ZStack{
                /// Rectangle 1 Concerne la TOP BAR
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 430, height: 126)
                    .background()
                    .id("Rectangle1")
                    .offset(y: -86)
        }
            .offset(y: -290)
    }
}

#Preview {
    TopBarView()
}
