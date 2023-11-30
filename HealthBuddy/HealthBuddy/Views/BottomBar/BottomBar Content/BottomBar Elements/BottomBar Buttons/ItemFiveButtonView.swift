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
                .cornerRadius(40)
                .frame(width: 50, height: 50)
                .onTapGesture {
                    isItemFiveViewActive = true
                    print("Item five button tapped!")
                }
                .id("ItemFiveButton")
            
            Image(systemName: "wake.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    ItemFiveButtonView()
}
