//
//  HomeActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct HomeActivity: View {
    @EnvironmentObject var data :DataModel
    @State var pageIndex = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    switch pageIndex{
                    case 0:
                        if(data.buddy.isAlive){
                            TopBarView()
                                .offset(y: 32)
                            MainContentView()
                                .offset(y: 21)
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
                            }
                            .offset(y: 21)
                        }
                    case 1:
                        ScoreView()
                            .offset(y: 21)
                    case 2:
                        ShopView()
                            .offset(y: 21)
                    case 3:
                        TrophyView()
                            .offset(y: 21)
                    case 4:
                        MyMapView()
                            .offset(y: 21)
                    default:
                        MainContentView()
                            .offset(y: 21)
                    }
                }
                Spacer()
                BottomBarView(pageIndex: $pageIndex)
                    .offset(y: -57)
            }
            ZStack{
                SideBarView()
            }
        }.onChange(of: pageIndex){ id in
            print(id)
        }
    }
}

#Preview {
    HomeActivity()
}
