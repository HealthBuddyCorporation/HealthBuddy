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
        VStack {
            Picker(selection: $selectedSegment, label: Text("Picker")) {
                Text("Shopping").tag(0)
                Text("Premium shop").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if selectedSegment == 0 {
                ScrollView(.vertical) {
                    Text("Food shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1..<6) { index in
                                ZStack{
                                       ShoppingView()
                                }
                            }
                        }
                    }
                    
                    Text("Cleanliness shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(6..<11) { index in
                                ZStack{
                                    ShoppingView()
                                }
                            }
                        }
                    }
                    
                    Text("Toy shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(6..<11) { index in
                                ZStack{
                                    ShoppingView()
                                }
                            }
                        }
                    }
                }
            } else {
                ScrollView(.vertical) {
                    Text("Premium Food shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(11..<16) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium Cleanliness shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium Cloth shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium Accessories shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium Look shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium World shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                    
                    Text("Premium Toys shop")
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(16..<21) { index in
                                ShoppingView()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
