//
//  SideBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SideBarView: View {
    
    @State private var isSideBarVisible = false
    
    var body: some View {
        ZStack{
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .frame(width: 70, height: 500)
                    .offset(x: isSideBarVisible ? 165 : 240)
                    .id("SideBarContent")
                    .animation(.easeInOut(duration: 0.5))

                
                Rectangle()
                    .cornerRadius(3)
                    .foregroundColor(.black)
                    .frame(width: 25, height: 80)
                    .offset(x: isSideBarVisible ? 119 : 190)
                    .id("")
                    .animation(.easeInOut(duration: 0.5))
                    .onTapGesture {
                        isSideBarVisible.toggle()
                    }
                
                Image(systemName: isSideBarVisible ? "arrowtriangle.forward.fill" : "arrowtriangle.backward.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .offset(x: isSideBarVisible ? 120 : 187)
                    .animation(.easeInOut(duration: 0.5))
                    
            }
            
            VStack{
                SBInvetoryFoodView()
                    .offset(y: -40)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBInvetoryClothView()
                    .offset(y: -30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBInvetoryAccessoriesView()
                    .offset(y: -15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBItemFourView()
                    .offset(y: 0)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBItemFiveView()
                    .offset(y: 15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBItemSixView()
                    .offset(y: 30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
                
                SBItemSevenView()
                    .offset(y: 40)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.5))
            }
        }
    }
}

#Preview {
    SideBarView()
}