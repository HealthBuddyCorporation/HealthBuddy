//
//  HomeActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 01:13      *
//  *************************************************************************************
//

import SwiftUI

struct HomeActivity: View {
        @EnvironmentObject var data :DataModel
        @State var pageIndex = 0
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            VStack{
                VStack{
                    switch pageIndex{
                    case 0:
                        TopBarView()
                            //.offset(y: 32)
                        if(data.buddy.isAlive){
                            MainContentView()
                                //.padding(.top, 20)
                                .onReceive(timer) { _ in
                                    data.StatOverTime()
                                }
                                .onChange(of: data.buddy.hp){ hp in
                                    if(hp <= 0){
                                        data.buddy.isAlive = false
                                    }
                                }
                        }else{
                            ZStack{
                                MainContentView()
                                DeathView()
                            }//.padding(.top, 20)
                        }
                    case 1:
                        VStack{
                            ScoreView()
                        }//.padding(.top, -100)
                    case 2:
                        VStack{
                            ShopView()
                        }//.padding(.top, -100)
                    case 3:
                        VStack{
                            TrophyView()
                        }//.padding(.top, -100)
                    case 4:
                        VStack{
                            MapView()
                        }//.padding(.top, -100)
                    default:
                        VStack{
                            MainContentView()
                        }//.padding(.top, 20)
                    }
                }
                VStack{
                    BottomBarView(pageIndex: $pageIndex)
                        .frame(width: 400, height: 150)
                        .ignoresSafeArea(.all)
                }//.padding(.top, -160)
            }
            ZStack{
                SideBarView()
            }
        }.onChange(of: pageIndex){ id in
            print(id)
        }
    }
}


