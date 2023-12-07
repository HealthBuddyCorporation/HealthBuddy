//
//  BottomBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        
        ZStack{
            VStack{
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 430, height: 100)
                    .id("BottomBarContent")
                
                Color("mainYellow")
                    .frame(width: 400, height: 3)
                    .padding(EdgeInsets(top: -110, leading: 0, bottom: 0, trailing: 0))
            }
            
            HomeButtonView()
                .offset(x: -155)
                .offset(y: -10)
            ScoreButtonView()
                .offset(x: -77)
                .offset(y: -10)
            ShopButtonView()
                .offset(x: 0)
                .offset(y: -10)
            TrophyButtonView()
                .offset(x: 77)
                .offset(y: -10)
            MapButtonView()
                .offset(x: 155)
                .offset(y: -10)
        }
    }
}

#Preview {
    BottomBarView()
}
