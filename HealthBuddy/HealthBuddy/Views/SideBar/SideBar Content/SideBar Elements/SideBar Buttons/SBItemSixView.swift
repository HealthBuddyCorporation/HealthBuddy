//
//  SBItemSixView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SBItemSixView: View {
    
    @State private var isPopoverPresented = false

    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
        }) {
            Image(systemName: "wake.circle.fill")
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
                SideBarItemSixView()
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
    SBItemSixView()
}
