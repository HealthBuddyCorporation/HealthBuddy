//
//  DeathView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 04/12/2023.
//

import SwiftUI

struct DeathView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        ZStack{
            PopupBackgroundBox()
            
            VStack{
                VStack{
                    Text ("Qu'avez vous fait?")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    Text ("(name)repose en paix")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                }.padding(EdgeInsets(top: 100, leading: 0, bottom: -100, trailing: 0))
                ZStack{
                    PopupContentBackgroundBox()
                
                    VStack{
                        
                        Image(systemName: "heart.slash.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: -40, leading: 0, bottom: 50, trailing: 0))
                        
                        HStack{
                            Text ("Age : ")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("Results example death")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Poids :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("Results example death")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Propreté :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("Results example death")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Bonheur :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("Results example death")
                                .foregroundStyle(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Cause de la mort : ")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("Results example death")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        
                    }
                }
                
                Button("Ouvrir un oeuf") {
                    data.buddy.hp = 100
                    data.buddy.isAlive = true
                }
            }
        }
    }
}

#Preview {
    DeathView()
}
