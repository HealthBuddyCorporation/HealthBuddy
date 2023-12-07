//
//  SettingsButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//

import SwiftUI

struct SettingsButtonView: View {
    
    @State private var isSettingsViewActive = false

       var body: some View {
           
           NavigationLink(destination: SettingsView(isActive: $isSettingsViewActive), isActive: $isSettingsViewActive) {
               EmptyView()
           }
            .hidden()
           
           Button(action: {
               isSettingsViewActive.toggle()
           }) {
               Image(systemName: "gear.circle.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 30, height: 30)
                   .foregroundColor(.white)
                   .padding(2)
                   .background(Color.gray)
                   .clipShape(Circle())
           }
       }
   }

#Preview {
    SettingsButtonView()
}
