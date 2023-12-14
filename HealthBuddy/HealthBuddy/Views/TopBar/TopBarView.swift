//
//  TopBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct TopBarView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        
        ZStack{
            VStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 400, height: 126)
                    .id("TopBarContent")
                
                Color("MainYellow")
                    .frame(width: 400, height: 3)
            }
            
            ProfilButtonView()
                .offset(x: -155)
                .offset(y: 20)
            
            VStack{
                charNameView(name: data.buddy.name)
                    .offset(y:80)
                charLevelView(level: data.buddy.level)
                    .offset(y:80)
            }
            
            SettingsButtonView()
                .offset(x: 155)
                .offset(y: 20)
        }
    }
}

#Preview {
    TopBarView()
}
