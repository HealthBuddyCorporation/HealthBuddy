//
//  ItemTwoButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ItemTwoButtonView: View {
    
    @State private var isItemTwoButtonViewActive = false
    
    var body: some View {
        NavigationLink(destination: ItemTwoView(), isActive: $isItemTwoButtonViewActive){
            EmptyView()
        }
        .hidden()
        
        ZStack{
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(.gray)
                .frame(width: 50, height: 50)
                .onTapGesture {
                    isItemTwoButtonViewActive = true
                    print ("Item Two Button tapped!")
                }
                .id("bottomBarItem2")
            
            Image(systemName: "wake.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    ItemTwoButtonView()
}
