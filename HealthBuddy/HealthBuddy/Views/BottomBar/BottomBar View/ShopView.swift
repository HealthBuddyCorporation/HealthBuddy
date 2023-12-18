//
//  ShopView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ShopView: View {
    
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
                                ForEach(1..<6) { index in
                                    ZStack{
                                        ShoppingView()
                                    }
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Cleanliness shop")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(6..<11) { index in
                                    ZStack{
                                        ShoppingView()
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
                                ForEach(6..<11) { index in
                                    ZStack{
                                        ShoppingView()
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
                                ForEach(11..<16) { index in
                                    ShoppingView()
                                }
                            }.padding()
                                .frame(height: 200)
                        }
                        
                        Text("Premium Cleanliness")
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .shadow(radius: 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
                                ForEach(16..<21) { index in
                                    ShoppingView()
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
