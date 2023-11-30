//
//  TopBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 430, height: 126)
                .id("TopBarContent")
            
            ProfilButtonView()
                .offset(x: -155)
                .offset(y: 20)
            
            VStack{
                charNameView()
                    .offset(y:80)
                charLevelView()
                    .offset(y:80)
            }
            
            SettingsButtonView()
                .offset(x: 155)
                .offset(y: 20)
        }
    }
}

#Preview {
    TopBarView()
}
