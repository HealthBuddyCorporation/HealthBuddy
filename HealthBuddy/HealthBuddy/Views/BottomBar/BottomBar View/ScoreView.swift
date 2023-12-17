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
    let localSegment = ["Text 1", "Text 2", "Text 3"]
    let nationalSegment = Image(systemName: "photo")
    
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
                    HStack{
                        VStack{
                            Text("$ User 3")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView()
                            
                            ZStack{
                                BlurEffect(style: .systemMaterialLight)
                                    .frame(width: 100, height: 80)
                                    .cornerRadius(2)
                                ZStack{
                                    Text("Third")
                                        .foregroundColor(.gray)
                                        .bold()
                                        .padding(EdgeInsets(top: -30, leading: 0, bottom: 0, trailing: 0))
                                    Text("Score")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                    
                                    Text("2034")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        
                        VStack{
                            Text("$ User 1")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView()
                            
                            ZStack {
                                BlurEffect(style: .systemMaterialLight)
                                    .frame(width: 100, height: 160)
                                    .cornerRadius(2)
                                Text("First")
                                    .foregroundColor(.gray)
                                    .bold()
                                    .padding(EdgeInsets(top: -60, leading: 0, bottom: 0, trailing: 0))
                                Text("Score")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                                Text("3894")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
                            }
                        }
                        
                        VStack{
                            Text("$ User 2")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView()
                            
                            ZStack {
                                BlurEffect(style: .systemMaterialLight)
                                    .frame(width: 100, height: 120)
                                    .cornerRadius(2)
                                ZStack {
                                    Text("Second")
                                        .foregroundColor(.gray)
                                        .bold()
                                        .padding(EdgeInsets(top: -40, leading: 0, bottom: 0, trailing: 0))
                                    Text("Score")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                                    Text("3894")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                    }
                    
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
                    }.scrollContentBackground(.hidden)
                    .padding()
                    
                case 1:
                    ForEach(localSegment, id: \.self) { text in
                        Text(text)
                        
                    }
                    .padding()
                        List {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                        Text("Item 4")
                        Text("Item 5")
                        Text("Item 6")
                        Text("Item 7")
                        Text("Item 8")
                        Text("Item 9")
                        Text("Item 10")
                    }.listRowBackground(Color.white.opacity(0.5))
                    .scrollContentBackground(.hidden)
                    .padding()
                    
                case 2:
                    nationalSegment
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding()
                    
                    List {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                        Text("Item 4")
                        Text("Item 5")
                        Text("Item 6")
                        Text("Item 7")
                        Text("Item 8")
                        Text("Item 9")
                        Text("Item 10")
                    }.scrollContentBackground(.hidden)
                    .padding()
                    
                    
                default:
                    EmptyView()
                }
                
            }.padding(EdgeInsets(top: 0, leading: 300, bottom: 0, trailing: 300))
                .frame(height: 700)
        }
    }
}

//#Preview {
//    ScoreView()
//}
