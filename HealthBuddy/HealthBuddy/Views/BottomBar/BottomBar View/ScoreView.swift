//
//  ScoreView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var data :DataModel
    @State private var selectedSegment = 0
    let friendsSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6","Item 7", "Item 8", "Item 9", "Item 10"]
    let localSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6","Item 7", "Item 8", "Item 9", "Item 10"]
    let nationalSegment = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6","Item 7", "Item 8", "Item 9", "Item 10"]
    
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
                            Text("\(data.scoreList[2].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: data.scoreList[2].profilePicture)
                            
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
                                    
                                    Text("\(data.scoreList[2].score)")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        
                        VStack{
                            Text("\(data.scoreList[0].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: "\(data.scoreList[0].profilePicture)")
                            
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
                                Text("\(data.scoreList[0].score)")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
                            }
                        }
                        
                        VStack{
                            Text("\(data.scoreList[1].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: "\(data.scoreList[1].profilePicture)")
                            
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
                                    Text("\(data.scoreList[1].score)")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    List(data.scoreList) { item in
                        
                        DisclosureGroup(item.username) {
                            HStack{
                                ProfilPictureView(profilePic: item.profilePicture)
                            }
                            HStack{
                                Text("Last online : ")
                                    .font(.headline)
                                Text("Today")
                            }
                            HStack{
                                Text("Record :")
                                    .font(.headline)
                                Text("\(item.score)")
                            }
                            
                        }.listRowBackground(Color.white.opacity(0.5))
                    }.scrollContentBackground(.hidden)
                    .padding()
                    
                case 1:
                    HStack{
                        VStack{
                            Text("\(data.scoreList[2].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: data.scoreList[2].profilePicture)
                            
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
                                    
                                    Text("\(data.scoreList[2].score)")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        
                        VStack{
                            Text("\(data.scoreList[0].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: "\(data.scoreList[0].profilePicture)")
                            
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
                                Text("\(data.scoreList[0].score)")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
                            }
                        }
                        
                        VStack{
                            Text("\(data.scoreList[1].username)")
                                .font(.title2)
                                .foregroundColor(.white)
                                .bold()
                            ProfilPictureView(profilePic: "\(data.scoreList[1].profilePicture)")
                            
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
                                    Text("\(data.scoreList[1].score)")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }.padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    List(data.scoreList) { item in
                        
                        DisclosureGroup(item.username) {
                            HStack{
                                ProfilPictureView(profilePic: item.profilePicture)
                            }
                            HStack{
                                Text("Last online:")
                                    .font(.headline)
                                Text("Today")
                            }
                            HStack{
                                Text("Record :")
                                    .font(.headline)
                                Text("\(item.score)")
                            }
                            HStack{
                                Text("Add Friend:")
                                    .font(.headline)
                                Button("<3") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                            }
                        }.listRowBackground(Color.white.opacity(0.5))
                    }.scrollContentBackground(.hidden)
                    .padding()
                    
                case 2:
                    Image(systemName: "photo.artframe")
                        .resizable()
                        .frame(width: 250, height: 200)
                        .foregroundColor(.black .opacity(0.6))
                    
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

#Preview {
    ScoreView()
}

