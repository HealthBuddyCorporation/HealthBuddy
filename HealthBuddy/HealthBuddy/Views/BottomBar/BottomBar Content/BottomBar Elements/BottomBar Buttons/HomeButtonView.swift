//
//  HomeButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct HomeButtonView: View {
    @Binding var pageIndex :Int
    @State private var isHomeButtonViewActive = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isHomeButtonViewActive = true
                    pageIndex = 0
                    print("Home Button Tapped!")
                }
                .id("HomeButton")
            
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
        
    }
}

//#Preview {
//    HomeButtonView()
//}
