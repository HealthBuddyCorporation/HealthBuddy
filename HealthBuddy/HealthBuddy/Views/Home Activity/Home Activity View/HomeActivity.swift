//
//  HomeActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct HomeActivity: View {
    @State var pageIndex = 0
    var body: some View {
        ZStack{
            VStack{
                TopBarView()
                    .offset(y: 32)
                Spacer()
                VStack{
                    switch pageIndex{
                    case 0:
                        MainContentView()
                            .offset(y: 21)
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
                        MapView()
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
