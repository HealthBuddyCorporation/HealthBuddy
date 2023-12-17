//
//  BottomBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct BottomBarView: View {
    @Binding var pageIndex :Int
    var body: some View {
        VStack{
            VStack{
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 430, height: 20)
                    .id("BottomBarContent")
                    .ignoresSafeArea(.all)
            }
            HStack{
                HomeButtonView(pageIndex: $pageIndex)
                    .padding(EdgeInsets(top: -10, leading: 15, bottom: 10, trailing: 15))
                ScoreButtonView(pageIndex: $pageIndex)
                    .padding(EdgeInsets(top: -10, leading: 15, bottom: 10, trailing: 15))
                ShopButtonView(pageIndex: $pageIndex)
                    .padding(EdgeInsets(top: -10, leading: 15, bottom: 10, trailing: 15))
                TrophyButtonView(pageIndex: $pageIndex)
                    .padding(EdgeInsets(top: -10, leading: 15, bottom: 10, trailing: 15))
                MapButtonView(pageIndex: $pageIndex)
                    .padding(EdgeInsets(top: -10, leading: 15, bottom: 10, trailing: 15))
            }//.padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
        }
    }
}
//#Preview {
//    BottomBarView()
//}
