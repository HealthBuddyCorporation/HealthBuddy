//
//  ShopView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ShopView: View {
    @EnvironmentObject var data :DataModel
    @State private var selectedSegment = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 880)
                .foregroundStyle(.clear)
            MainFrameBackgroundView()
        
            VStack {
                Picker(selection: $selectedSegment, label: Text("Picker")) {
                    Text("Shopping").tag(0)
                    Text("Premium shop").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
                .padding()
                
                if selectedSegment == 0 {
                    ScrollView(.vertical) {
                        Text("Food shop")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { food in
                                    ZStack{
                                        if(!food.isPremium){
                                            ShoppingView(food: food)
                                        }
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Hygiene shop")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.cleanerList) { index in
                                    ZStack{
                                        if(!index.isPremium){
                                            ShoppingView(cleaner: index)
                                        }
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Toy shop")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.toyList) { index in
                                    ZStack{
                                        if(!index.isPremium){
                                            ShoppingView(toy: index)
                                        }
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                    }
                } else {
                    ScrollView(.vertical) {
                        Text("Premium Food")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { food in
                                    if(food.isPremium){
                                        ShoppingView(food: food)
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Hygiene")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.cleanerList) { index in
                                    if(index.isPremium){
                                        ShoppingView(cleaner: index)
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Toys")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.toyList) { index in
                                    if(index.isPremium){
                                        ShoppingView(toy: index)
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Cloth")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { index in
                                    ShoppingView(food: index)
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Accessories")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { index in
                                    ShoppingView(food: index)
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Look")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { index in
                                    ShoppingView(food: index)
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium World")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(data.foodList) { index in
                                    ShoppingView(food: index)
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                    }
                    }
            }.padding(EdgeInsets(top: 100, leading: 300, bottom: 100, trailing: 300))
        }
    }
}



#Preview {
    ShopView()
}
