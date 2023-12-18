//
//  ScoreView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ScoreView: View {
    @State private var selectedSegment = 0
    let friendsSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6","Item 7", "Item 8", "Item 9", "Item 10"]
    let localSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    let nationalSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 880)
                .foregroundStyle(.clear)
            MainFrameBackgroundView()
            VStack {
                Text("LeaderBoard")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                
                Picker("Segments", selection: $selectedSegment) {
                    Text("Friends").tag(0)
                    Text("Local").tag(1)
                    Text("National").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .padding()
                
                switch selectedSegment {
                case 0:
                    PodiumView()
                    
                    List(friendsSegment, id: \.self) { item in
                        
                        DisclosureGroup(item) {
                            HStack{
                                Text("Last run :")
                                    .font(.headline)
                                Text("Today")
                            }
                            HStack{
                                Text("Record :")
                                    .font(.headline)
                                Text("2300 Buddys")
                            }
                            HStack{
                                Text("Like :")
                                    .font(.headline)
                                Button("Like Me") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                            }
                        }.listRowBackground(Color.white.opacity(0.5))
                            .foregroundColor(.white)
                            .bold()
                    }.scrollContentBackground(.hidden)
                    .padding()
                    
                case 1:
                    PodiumView()
                    
                    List(localSegment, id: \.self) { item in
                        
                        DisclosureGroup(item) {
                            HStack{
                                Text("Last run :")
                                    .font(.headline)
                                Text("Today")
                            }
                            HStack{
                                Text("Record :")
                                    .font(.headline)
                                Text("2300 Buddys")
                            }
                            HStack{
                                Text("Like :")
                                    .font(.headline)
                                Button("Like Me") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                            }
                        }.listRowBackground(Color.white.opacity(0.5))
                            .foregroundColor(.white)
                            .bold()
                    }
                    .scrollContentBackground(.hidden)
                    .padding()
                    
                case 2:
                    
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding()
                    
                    List(nationalSegment, id: \.self) { item in
                        
                        DisclosureGroup(item) {
                            HStack{
                                Text("Last run :")
                                    .font(.headline)
                                Text("Today")
                            }
                            HStack{
                                Text("Record :")
                                    .font(.headline)
                                Text("2300 Buddys")
                            }
                            HStack{
                                Text("Like :")
                                    .font(.headline)
                                Button("Like Me") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                            }
                        }.listRowBackground(Color.white.opacity(0.5))
                            .foregroundColor(.white)
                            .bold()
                    }
                    .scrollContentBackground(.hidden)
                    .padding()
                    
                default:
                    EmptyView()
                }
                
            }.padding(EdgeInsets(top: 0, leading: 300, bottom: 0, trailing: 300))
                .frame(height: 700)
        }
    }
}

#Preview {
    ScoreView()
}
