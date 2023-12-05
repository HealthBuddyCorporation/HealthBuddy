//
//  SideBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SideBarView: View {
    
    @State private var isSideBarVisible = false
    @State private var isFoodPresented = false
    @State private var isCleanerPresented = false
    @State private var isAccessoriesPresented = false
    
    var body: some View {
        ZStack{
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.gray.opacity(0.5))
                    .frame(width: 70, height: 400)
                    .shadow(radius: 10)
                    .offset(x: isSideBarVisible ? 165 : 240)
                    .offset(y: 0)
                    .id("SideBarContent")
                    .animation(.easeInOut(duration: 0.2))
                
                Color("mainYellow")
                    .cornerRadius(3)
                    .foregroundColor(.gray)
                    .frame(width: 25, height: 80)
                    .shadow(radius: 10)
                    .offset(x: isSideBarVisible ? 119 : 190)
                    .offset(y: 0)
                    .id("")
                    .animation(.easeInOut(duration: 0.2))
                    .onTapGesture {
                        isSideBarVisible.toggle()
                        if isSideBarVisible{
                            isFoodPresented = false
                            
                        }
                    }
                
                Image(systemName: isSideBarVisible ? "arrowtriangle.forward.fill" : "arrowtriangle.backward.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .offset(x: isSideBarVisible ? 120 : 187)
                    .animation(.easeInOut(duration: 0.2))
                    
            }
            
            if(isFoodPresented){
                SideBarInvetoryFoodView(isShown: $isFoodPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isCleanerPresented){
                SideBarInventoryCleanerView(isShown: $isCleanerPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isAccessoriesPresented){
                SideBarInvetoryAccessoriesView()
            }
            
            VStack{
                SBInvetoryFoodView(isPopoverPresented: $isFoodPresented, isVisible: $isSideBarVisible)
                    .offset(y: -40)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryCleanerView(isPopoverPresented: $isCleanerPresented, isVisible: $isSideBarVisible)
                    .offset(y: -30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInvetoryAccessoriesView(isPopoverPresented: $isAccessoriesPresented)
                    .offset(y: -15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBItemFourView()
                    .offset(y: 0)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBItemFiveView()
                    .offset(y: 15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBItemSixView()
                    .offset(y: 30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBItemSevenView()
                    .offset(y: 40)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
            }
        }
    }
}

#Preview {
    SideBarView()
}
