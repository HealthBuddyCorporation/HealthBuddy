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
                
                Group {
                    if selectedSegment == 0 {
                        ScrollView(.vertical) {
                            Text("Food shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(1..<6) { index in
                                        Text("Food \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.gray)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Cleanliness shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(6..<11) { index in
                                        Text("Clean \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Toy shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(6..<11) { index in
                                        Text("Toy \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                    } else {
                        ScrollView(.vertical) {
                            // Contenu pour le segment 2
                            Text("Premier Food shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(11..<16) { index in
                                        Text("Food \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.green)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium Cleanliness shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Item \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium Cloth shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Item \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium Accessories shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Item \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium Look shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Item \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium World shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Item \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                            Text("Premium Toys shop")
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(16..<21) { index in
                                        Text("Toys \(index)")
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.orange)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

#Preview {
    ShopView()
}
