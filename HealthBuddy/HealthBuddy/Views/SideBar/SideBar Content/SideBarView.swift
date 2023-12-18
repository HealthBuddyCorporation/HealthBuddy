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
    @State private var isClothPresented = false
    @State private var isToyPresented = false
    @State private var isLookPresented = false
    @State private var isWorldPresented = false
    
    var body: some View {
        ZStack{
            ZStack{
                BlurEffect(style: .systemChromeMaterialDark)
                    .cornerRadius(10)
                    .foregroundColor(.gray.opacity(0.5))
                    .frame(width: 70, height: 400)
                    .shadow(radius: 10)
                    .offset(x: isSideBarVisible ? 165 : 240)
                    .offset(y: 0)
                    .id("SideBarContent")
                    .animation(.easeInOut(duration: 0.2))
                
                Color("MainYellow")
                    .cornerRadius(3)
                    .foregroundColor(.gray)
                    .frame(width: 25, height: 80)
                    .shadow(radius: 10)
                    .offset(x: isSideBarVisible ? 119 : 190)
                    .offset(y: 0)
                    .id("")
                    .animation(.easeInOut(duration: 0.2))
                
                Image(systemName: isSideBarVisible ? "arrowtriangle.forward.fill" : "arrowtriangle.backward.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .offset(x: isSideBarVisible ? 120 : 187)
                    .animation(.easeInOut(duration: 0.2))
                    
            }.onTapGesture {
                isSideBarVisible.toggle()
                if isSideBarVisible{
                    isFoodPresented = false
                    isCleanerPresented = false
                }
            }
            
            if(isFoodPresented){
                SideBarInvetoryFoodView(isShown: $isFoodPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isCleanerPresented){
                SideBarInventoryCleanerView(isShown: $isCleanerPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isClothPresented){
                SideBarInventoryClothView(isShown: $isClothPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isAccessoriesPresented){
                SideBarInvetoryAccessoriesView(isShown: $isAccessoriesPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isLookPresented){
                SideBarInventoryLookView(isShown: $isLookPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isToyPresented){
                SideBarInventoryToyView(isShown: $isToyPresented, isBarVisible: $isSideBarVisible)
            }
            
            if(isWorldPresented){
                SideBarInventoryWorldView(isShown: $isWorldPresented, isBarVisible: $isSideBarVisible)
            }
        
            VStack{
                SBInvetoryFoodView(isPopoverPresented: $isFoodPresented, isVisible: $isSideBarVisible)
                    .offset(y: -45)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryCleanerView(isPopoverPresented: $isCleanerPresented, isVisible: $isSideBarVisible)
                    .offset(y: -30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryClothView(isPopoverPresented: $isClothPresented, isVisible: $isSideBarVisible)
                    .offset(y: -15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInvetoryAccessoriesView(isPopoverPresented: $isAccessoriesPresented, isVisible: $isSideBarVisible)
                    .offset(y: 0)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryLookView(isPopoverPresented: $isLookPresented, isVisible: $isSideBarVisible)
                    .offset(y: 15)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryToyView(isPopoverPresented: $isToyPresented, isVisible: $isSideBarVisible)
                    .offset(y: 30)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
                
                SBInventoryWorldView(isPopoverPresented: $isWorldPresented, isVisible: $isSideBarVisible)
                    .offset(y: 45)
                    .offset(x: isSideBarVisible ? 165 : 250)
                    .animation(.easeInOut(duration: 0.2))
            }
        }
    }
}

#Preview {
    SideBarView()
}
