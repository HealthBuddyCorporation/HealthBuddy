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
            Image(systemName: "mountain.2.fill")
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




#Preview {
    SBItemSevenView()
}
