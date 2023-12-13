//
//  SBInvetoryFoodView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/11/2023.
//

import SwiftUI

struct SBInvetoryFoodView: View {
    @Binding var isPopoverPresented : Bool
    @Binding var isVisible : Bool
    
    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
            isVisible = false
        }) {
            Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(Color("MainYellow", bundle: nil))
                .padding(2)
                .background(Color.customColor)
                .clipShape(Circle())
        }
    }
}

//#Preview {
//    SBInvetoryFoodView()
//}
