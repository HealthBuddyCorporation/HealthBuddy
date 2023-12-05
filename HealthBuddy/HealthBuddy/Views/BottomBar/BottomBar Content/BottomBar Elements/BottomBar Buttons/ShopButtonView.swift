//
//  ItemTwoButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ShopButtonView: View {
    
    @State private var isShopButtonViewActive = false
    
    var body: some View {
        NavigationLink(destination: ShopView(), isActive: $isShopButtonViewActive){
            EmptyView()
        }
        .hidden()
        
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 35, height: 35)
                .onTapGesture {
                    isShopButtonViewActive = true
                    print ("Shop Button tapped!")
                }
                .id("ShopButton")
            
            Image(systemName: "cart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
        }
    }
}

#Preview {
    ShopButtonView()
}
