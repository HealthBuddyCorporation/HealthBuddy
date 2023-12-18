//
//  SBInventoryToyView.swift
//  HealthBuddy
//
//  Created by Student04 on 07/12/2023.
//

import SwiftUI

struct SBInventoryToyView: View {
    @Binding var isPopoverPresented : Bool
    @Binding var isVisible : Bool
    
    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
            isVisible = false
        }) {
            Image(systemName: "gamecontroller.fill")
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
//    SBInvetoryToyView()
//}
