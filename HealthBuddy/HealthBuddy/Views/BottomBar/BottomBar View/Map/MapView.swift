//
//  MapView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 880)
                .foregroundStyle(.clear)
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 430, height: 706)
                        .foregroundColor(.gray)
                    
                    VStack{
                        MapSearchView()
                            .padding(EdgeInsets(top: 27, leading: 0, bottom: 0, trailing: 0))
                    
                        MapContentView()
                        .padding(EdgeInsets(top: 170, leading: 0, bottom: 0, trailing: 0))
                        
                        MapActionView()
                            .padding(EdgeInsets(top: 94, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }.padding(EdgeInsets(top: 80, leading: 0, bottom: 80, trailing: 0))
            .frame(height: 800)
        }
    }
}

#Preview {
    MapView()
}
