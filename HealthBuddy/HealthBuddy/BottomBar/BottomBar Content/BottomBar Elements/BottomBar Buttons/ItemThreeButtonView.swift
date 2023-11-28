//
//  ItemThreeButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ItemThreeButtonView: View {
    
    @State private var isItemThreeViewActive = false
    
    var body: some View {
        NavigationLink(destination: ItemThreeView(), isActive: $isItemThreeViewActive){
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(40)
                .frame(width: 50, height: 50)
                .onTapGesture {
                    isItemThreeViewActive = true
                    print("Item Three Button tapped!")
                }
                .id("ItemThreeButton")
            
            Image(systemName: "wake.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    ItemThreeButtonView()
}
