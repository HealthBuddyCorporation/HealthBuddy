//
//  SBInvetoryAccessoriesView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/11/2023.
//

import SwiftUI

struct SBInvetoryAccessoriesView: View {
    @Binding var isPopoverPresented : Bool
    @Binding var isVisible : Bool

    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
            isVisible = false
        }) {
            Image(systemName: "sunglasses.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
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
