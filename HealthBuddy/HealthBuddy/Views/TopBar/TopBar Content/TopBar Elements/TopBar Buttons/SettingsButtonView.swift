//
//  SettingsButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 25/11/2023.
//

import SwiftUI

struct SettingsButtonView: View {
    
    @State private var isPopoverPresented = false

       var body: some View {
           Button(action: {
               isPopoverPresented.toggle()
           }) {
               Image(systemName: "gear.circle.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 40, height: 40)
                   .foregroundColor(.white)
                   .padding(5)
                   .background(Color.gray)
                   .clipShape(Circle())
           }
           .popover(isPresented: $isPopoverPresented, arrowEdge: .top, content: {
               VStack {
                   SettingsView()
                       .padding()
                   // Ajoutez d'autres éléments au besoin
               }
               .onTapGesture {
                   // Fermer la popover lorsqu'on clique à l'extérieur
                   isPopoverPresented = false
               }
           })
       }
   }

#Preview {
    SettingsButtonView()
}
