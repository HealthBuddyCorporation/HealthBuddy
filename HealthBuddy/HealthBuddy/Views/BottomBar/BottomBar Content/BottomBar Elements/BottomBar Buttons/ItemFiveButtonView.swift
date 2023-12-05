//
//  ItemFiveButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ItemFiveButtonView: View {
    
    @State private var isItemFiveViewActive = false
    
    var body: some View {
        NavigationLink(destination: ItemFiveView(), isActive: $isItemFiveViewActive) {
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(37)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isItemFiveViewActive = true
                    print("Item five button tapped!")
                }
                .id("ItemFiveButton")
            
            Image(systemName: "wake.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
        }
    }
}

#Preview {
    ItemFiveButtonView()
}
