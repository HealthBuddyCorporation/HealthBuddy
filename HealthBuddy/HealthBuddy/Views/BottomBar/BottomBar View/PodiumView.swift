//
//  PodiumView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 18/12/2023.
//

import SwiftUI

struct PodiumView: View {
    var body: some View {
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
    }
}

#Preview {
    PodiumView()
}
