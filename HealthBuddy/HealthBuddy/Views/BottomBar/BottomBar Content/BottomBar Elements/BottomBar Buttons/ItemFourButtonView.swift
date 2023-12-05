//
//  ItemFourButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ItemFourButtonView: View {
    
    @State private var isItemFourViewActive = false
    
    var body: some View {
        NavigationLink(destination: ItemFourView(), isActive: $isItemFourViewActive){
            EmptyView()
        }
        .hidden()
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(40)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isItemFourViewActive = true
                    print("Item four Button tapped!")
                }
                .id("ItemFour")
            
            Image(systemName: "wake.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
        }
    }
}

#Preview {
    ItemFourButtonView()
}
