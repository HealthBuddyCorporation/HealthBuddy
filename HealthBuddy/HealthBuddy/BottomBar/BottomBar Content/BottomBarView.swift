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
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 430, height: 100)
                .id("BottomBarContent")
            
            HomeButtonView()
                .offset(x: -155)
                .offset(y: 0)
            
            ItemTwoButtonView()
                .offset(x: -77)
                .offset(y: 0)
            ItemThreeButtonView()
            
            ItemFourButtonView()
                .offset(x: 77)
                .offset(y: 0)
            ItemFiveButtonView()
                .offset(x: 155)
                .offset(y: 0)
        }
    }
}

#Preview {
    BottomBarView()
}
