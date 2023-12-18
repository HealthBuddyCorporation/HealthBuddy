//
//  MapSearchView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 06/12/2023.
//

import SwiftUI

struct MapSearchView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 430, height: 50)
            
            Rectangle()
                .frame(width: 350, height: 30)
                .foregroundColor(.gray)
                .cornerRadius(20)
            
            TextField("Search location...", text: $search)
                .foregroundColor(Color.yellow)
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                
            
            Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white.opacity(0.5))
                        .padding(EdgeInsets(top: 0, leading: 290, bottom: 0, trailing: 0))
                    
                }
            
                
        }
        
    }
}

#Preview {
    MapSearchView()
}
