//
//  SideBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        ZStack{
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .opacity(0.5)
                    .frame(width: 100, height: 500)
                    .offset(x: 155)
                    .id("SideBarContent")
            }
            
            VStack{
                SBItemOneView()
                    .offset(x: 155)
                    .offset(y: -40)
                
                SBItemTwoView()
                    .offset(x: 155)
                    .offset(y: -30)
                
                SBItemThreeView()
                    .offset(x: 155)
                    .offset(y: -15)
                SBItemFourView()
                    .offset(x: 155)
                    .offset(y: 0)
                
                SBItemFiveView()
                    .offset(x: 155)
                    .offset(y: 15)
                
                SBItemSixView()
                    .offset(x: 155)
                    .offset(y: 30)
                
                SBItemSevenView()
                    .offset(x: 155)
                    .offset(y: 40)
            }
        }
    }
}

#Preview {
    SideBarView()
}
