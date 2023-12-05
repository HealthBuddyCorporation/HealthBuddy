//
//  ProfilButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct ProfilButtonView: View {
    
    @State private var isPopoverPresented = false

       var body: some View {
           Button(action: {
               isPopoverPresented.toggle()
           }) {
               Image(systemName: "person.circle.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 30, height: 30)
                   .foregroundColor(.white)
                   .padding(2)
                   .background(Color.gray)
                   .clipShape(Circle())
           }
           .popover(isPresented: $isPopoverPresented, arrowEdge: .top, content: {
               VStack {
                   ProfilView()
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
    ProfilButtonView()
}
