//
//  MainContentView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:19      *
//  *************************************************************************************
//

import SwiftUI
import RiveRuntime

struct MainContentView: View {
    @EnvironmentObject var data :DataModel
    @State var isTargeted = false
    @State var isMainViewActive = true
    
    var body: some View {
        
        ZStack{
            Image("gym")
                .resizable()
                .frame(width: 400, height: 706)
                .aspectRatio(contentMode: .fill)
                .id("MainContent")
            
            VStack{
                MoneyView()
                LifeCycleBarView()
                    .padding(.top, -20)
            }.padding(.top, -355)
            
            Text("Health")
                .padding(EdgeInsets(top: -295, leading: -164, bottom: 0, trailing: 0))
                .font(.system(size: 10))
                .foregroundColor(.white)
            
            Text("Hungry")
                .padding(EdgeInsets(top: -295, leading: -65, bottom: 0, trailing: 0))
                .font(.system(size: 10))
                .foregroundColor(.white)
            
            Text("Cleanliness")
                .padding(EdgeInsets(top: -295, leading: 103, bottom: 0, trailing: 0))
                .font(.system(size: 10))
                .foregroundColor(.white)
            
            Text("Happyness")
                .padding(EdgeInsets(top: -295, leading: 300, bottom: 0, trailing: 0))
                .font(.system(size: 10))
                .foregroundColor(.white)
            
            CharacterView()
                .frame(width: 200, height: 200)
                .offset(y: 150)
                .dropDestination(for: Droppable.self) {
                    items, location in
                    print(items.self)
                    return data.handleDrop(items)
                } isTargeted: { targeted in
                    isTargeted = targeted
                }
        }
    }
}
