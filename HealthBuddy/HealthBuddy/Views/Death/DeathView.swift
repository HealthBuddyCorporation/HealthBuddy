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
                    Text ("Qu'avez vous fait?!?")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .padding(EdgeInsets(top: -150, leading: 0, bottom: 0, trailing: 0))
                    Text ("\(data.buddy.name), repose en paix")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(EdgeInsets(top: -100, leading: 0, bottom: 100, trailing: 0))
                    Text ("repose en paix")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(EdgeInsets(top: -90, leading: 0, bottom: 100, trailing: 0))
                }.padding(EdgeInsets(top: 100, leading: 0, bottom: -100, trailing: 0))
                ZStack{
                    PopupContentBackgroundBox()
                        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                    VStack{
                        
                        Image(systemName: "heart.slash.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: -40, leading: 0, bottom: 50, trailing: 0))
                        
                        HStack{
                            Text ("Level : ")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text ("\(data.buddy.level)")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Poids :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text (data.buddy.nutrition <= 0 ? "A la peau sur les os" : data.buddy.weight >= 120 ? "Est un beau petit porcelet" : "Une forme Olympique")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Propreté :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text (data.buddy.hygiene <= 0 ? "Est tombé gravement malade" : "Lisse comme un bébé")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Bonheur :")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text (data.buddy.happiness <= 0 ? "A subit une dépression fatale" : "Souriant dans le trépas")
                                .foregroundStyle(.white)
                                .font(.system(size: 17))
                        }
                        HStack{
                            Text ("Cause de la mort : ")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                            Text (data.buddy.nutrition <= 0 ? "S'est laissé mourrir de faim sans son ami" :
                                    data.buddy.weight >= 120 ? "A traversé 3 étages en s'asseillant" :
                                    data.buddy.hygiene <= 0 ? "A contracté plus de 100 maladies" :
                                    data.buddy.happiness <= 0 ? "S'est laissé dépérir devant Arte" :
                            "A disparu de façon obscure...Une idée?")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }

                        Button("Découvrir un nouvel ami") {
                            data.makeNewBud = true
                        }.padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        
                    }
                }
            }
        }
    }
}

#Preview {
    DeathView()
}
