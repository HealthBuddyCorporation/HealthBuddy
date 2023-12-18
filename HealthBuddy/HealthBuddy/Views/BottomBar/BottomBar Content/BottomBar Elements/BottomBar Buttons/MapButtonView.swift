//
//  MapButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct MapButtonView: View {
    @Binding var pageIndex :Int
    @State private var isMapViewActive = false
    
    var body: some View {
        NavigationLink(destination: MyMapView(), isActive: $isMapViewActive) {
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(37)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isMapViewActive = true
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
