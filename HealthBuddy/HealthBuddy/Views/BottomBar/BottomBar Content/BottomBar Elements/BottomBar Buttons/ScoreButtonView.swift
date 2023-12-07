//
//  ScoreButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ScoreButtonView: View {
    
    @State private var isScoreButtonViewActive = false
    
    var body: some View {
        NavigationLink(destination: ScoreView(), isActive: $isScoreButtonViewActive){
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(40)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isScoreButtonViewActive = true
                    print("Score Button tapped!")
                }
                .id("ScoreButton")
            
            Image(systemName: "medal.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

#Preview {
    ScoreButtonView()
}
