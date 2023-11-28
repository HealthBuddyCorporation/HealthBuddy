//
//  BuildSheet.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct BuildSheet: View {
    var body: some View {
        ZStack(alignment: .top) {
            /// Cette stack contrôle le contenu de la Top Bar
            ZStack{
                /// Rectangle 1 Concerne la TOP BAR
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 430, height: 126)
                    .background()
                    .id("topBar")
                    .offset(y: -86)
                
                /// Cette stack contrôle les boutons et informations de la TOP BAR
                HStack{
                    
                    /// Rectangle1a concerne le bouton menu
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: -60)
                        .offset(x: -60)
                        .id("settingsButton")
                    
                    /// Cette stack contrôle les textes de la TOPBAR
                    VStack{
                        /// Ce texte prend en compte le nom du Tamagochi
                        Text("Tamagochi Name")
                            .foregroundColor(.white)
                            .offset(y: -60)
                            .id("charName")
                        
                        /// Ce texte prend en compte le niveau du Tamagochi
                        Text("Tamagochi level")
                            .foregroundColor(.white)
                            .offset(y: -60)
                            .id("charLvl")
                    }
                    
                    /// Rectangle1b concerne le bouton profil
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: -60)
                        .offset(x: 60)
                        .id("profilBtn")
                }
            }
            
            /// Cette stack contrôle le contenu central de l'écran
            ZStack{
                /// Rectangle2 est le contenu central de l'écran
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.4)
                    .frame(width: 430, height: 706)
                    .background()
                    .offset(y: 41)
                    .id("mainCenterContent")
                
                VStack{
                    /// MenuBar correspond à la barre latérale
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .opacity(0.5)
                        .frame(width: 100, height: 500)
                        .offset(x: 155)
                        .id("sideBar")
                }
                VStack{
                    /// Item1 correspond au premier bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: -40)
                        .id("sideBarItem1")
                    
                    /// Item1 correspond au deuxième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: -30)
                        .id("sideBarItem2")
                    
                    /// Item2 correspond au troisième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: -20)
                        .id("sideBarItem3")
                    /// Item3 correspond au quattrième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: -10)
                        .id("sideBarItem4")
                    /// Item' correspond au cinquième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: 0)
                        .id("sideBarItem5")
                    /// Item1 correspond au sixième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: 10)
                        .id("sideBarItem6")
                    /// Item1 correspond au septième bouton en partant du haut de la barre latérale
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(x: 155)
                        .offset(y: 20)
                        .id("sideBarItem7")
                }
                .offset(y: 6)
                
            }
            
            /// Cette stack contrôle le contenu de la Bottom Bar
            ZStack{
                /// Rectangle3 concerne la Bottom Bar
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 430, height: 100)
                    .background()
                    .offset(y: 667)
                    .id("bottomBar")
                
                HStack{
                    
                    /// Rectangle4a concerne le bouton 1 de la Bottom Bar
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: 655)
                        .offset(x: -35)
                        .id("bottomBarItem1")
                    
                    /// Rectangle4b concerne le bouton 1 de la Bottom Bar
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: 655)
                        .offset(x: -17.5)
                        .id("bottomBarItem2")
                    
                    /// Rectangle4c concerne le bouton 1 de la Bottom Bar
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: 655)
                        .offset(x: 0)
                        .id("bottomBarItem3")
                    
                    /// Rectangle4d concerne le bouton 1 de la Bottom Bar
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: 655)
                        .offset(x: 17.5)
                        .id("bottomBarItem4")
                    
                    /// Rectangle4e concerne le bouton 1 de la Bottom Bar
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(.gray)
                        .frame(width: 50, height: 50)
                        .offset(y: 655)
                        .offset(x: 35)
                        .id("bottomBarItem5")
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}
#Preview {
    BuildSheet()
}
