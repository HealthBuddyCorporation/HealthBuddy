//
//  TrophyButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct TrophyButtonView: View {
    
    @State private var isTrophyViewActive = false
    
    var body: some View {
        NavigationLink(destination: TrophyView(), isActive: $isTrophyViewActive){
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(40)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isTrophyViewActive = true
                    print("Item four Button tapped!")
                }
                .id("ItemFour")
            
            Image(systemName: "trophy.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

#Preview {
    TrophyView()
}
