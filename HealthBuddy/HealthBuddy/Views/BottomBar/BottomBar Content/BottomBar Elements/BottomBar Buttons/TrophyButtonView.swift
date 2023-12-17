//
//  TrophyButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct TrophyButtonView: View {
    @Binding var pageIndex :Int
    @State private var isTrophyButtonViewActive = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isTrophyButtonViewActive = true
                    pageIndex = 3
                    print("Trophy Button tapped!")
                }
                .id("TrophyButton")
            
            Image(systemName: "trophy.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

//#Preview {
//    TrophyView()
//}
