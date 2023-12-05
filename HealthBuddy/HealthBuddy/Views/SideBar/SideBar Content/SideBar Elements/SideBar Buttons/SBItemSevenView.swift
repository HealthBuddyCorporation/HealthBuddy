//
//  SBItemSevenView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//


import SwiftUI

struct SBItemSevenView: View {
    @State private var isPopoverPresented = false

    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
        }) {
            Image(systemName: "wake.circle.fill")
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




#Preview {
    SBItemSevenView()
}
