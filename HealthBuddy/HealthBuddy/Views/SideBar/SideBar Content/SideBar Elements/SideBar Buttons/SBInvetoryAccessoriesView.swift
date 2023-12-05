//
//  SBInvetoryAccessoriesView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/11/2023.
//

import SwiftUI

struct SBInvetoryAccessoriesView: View {
    
    @Binding var isPopoverPresented : Bool

    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
        }) {
            Image(systemName: "sunglasses.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
                .padding(2)
                .background(Color.customColor)
                .clipShape(Circle())
        }
       
    }
}


//#Preview {
//    SBInvetoryAccessoriesView()
//}
