//
//  MainContentView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
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
            
            MoneyView()
                .offset(y: -338)
            
            LifeCycleBarView()
                .offset(y: -300)
            
            Text("Health")
                .padding(EdgeInsets(top: -285, leading: -164, bottom: 0, trailing: 0))
                .font(.system(size: 10))
            
            Text("Hungry")
                .padding(EdgeInsets(top: -285, leading: -65, bottom: 0, trailing: 0))
                .font(.system(size: 10))
            
            Text("Cleanliness")
                .padding(EdgeInsets(top: -285, leading: 103, bottom: 0, trailing: 0))
                .font(.system(size: 10))
            
            Text("Happyness")
                .padding(EdgeInsets(top: -285, leading: 300, bottom: 0, trailing: 0))
                .font(.system(size: 10))
            
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

#Preview {
    MainContentView()
}
