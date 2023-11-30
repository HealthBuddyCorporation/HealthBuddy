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
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.gray)
                .clipShape(Circle())
        }
       
    }
}


//#Preview {
//    SBInvetoryAccessoriesView()
//}
