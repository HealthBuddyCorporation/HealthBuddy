//
//  MenuButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        VStack {
            HStack{
                
                /// Rectangle1a concerne le bouton menu
                Rectangle()
                    .cornerRadius(40)
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 50)
                    .offset(y: -60)
                    .offset(x: -60)
                    .id("Rectangle1a")
            }
        }
    }
}

#Preview {
    MenuButtonView()
}
