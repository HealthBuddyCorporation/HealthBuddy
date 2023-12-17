//
//  MapButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct MapButtonView: View {
    @Binding var pageIndex :Int
    @State private var isMapButtonViewActive = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isMapButtonViewActive = true
                    pageIndex = 4
                    print("Map button tapped!")
                }
                .id("MapButton")
            
            Image(systemName: "map.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

//#Preview {
//    MapButtonView()
//}
