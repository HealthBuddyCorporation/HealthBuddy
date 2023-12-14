//
//  MapView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct MyMapView: View {
    var body: some View {
        ZStack{
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
            }
        }
    }
}

#Preview {
    MyMapView()
}
