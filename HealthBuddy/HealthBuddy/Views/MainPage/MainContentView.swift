//
//  MainContentView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct MainContentView: View {
    @EnvironmentObject var data :DataModel
    @State var isTargeted = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.4)
                .frame(width: 430, height: 706)
                .background()
                .id("MainContent")
            
            VStack{
                HStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 10)
                        .padding(.trailing, 20)
                    
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(width: 50, height: 10)
                        .padding(.trailing, 20)
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: 50, height: 10)
                        .padding(.trailing, 20)
                    
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 50, height: 10)
                }
                
                HStack{
                    Text("bar 1")
                        .padding(.trailing, 30)
                    Text("bar 2")
                        .padding(.trailing, 30)
                    Text("bar 3")
                        .padding(.trailing, 30)
                    Text("bar 4")
                }
            }
            .offset(y: -310)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
                .offset(y: 200)
                .dropDestination(for: Food.self) { foods, location in
                    data.handleFoodDrop(foods)
                } isTargeted: { targeted in
                    isTargeted = targeted
                }
        }
    }
}

#Preview {
    MainContentView()
}
