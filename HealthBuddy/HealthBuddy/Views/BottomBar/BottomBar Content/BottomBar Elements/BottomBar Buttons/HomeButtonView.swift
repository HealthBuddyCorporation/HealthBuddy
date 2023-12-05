//
//  HomeButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct HomeButtonView: View {
    
    @State private var isHomeButtonViewActive = false
    
    var body: some View {
        
        NavigationLink(destination: MainActivity(), isActive: $isHomeButtonViewActive){
            EmptyView()
        }
        .hidden()
        
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 35, height: 35)
                .onTapGesture {
                isHomeButtonViewActive = true
                print("Home Button Tapped!")
            }
            .id("bottomBarItem1")
            
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

#Preview {
    HomeButtonView()
}
