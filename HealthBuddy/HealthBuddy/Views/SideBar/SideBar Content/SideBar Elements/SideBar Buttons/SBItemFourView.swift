//
//  SBItemFourView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SBItemFourView: View {
    
    @State private var isPopoverPresented = false

    var body: some View {
        Button(action: {
            isPopoverPresented.toggle()
        }) {
            Image(systemName: "hanger")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(.gray)
                .padding(2)
                .background(Color.customColor)
                .clipShape(Circle())
        }
        .popover(isPresented: $isPopoverPresented, arrowEdge: .top, content: {
            VStack {
                SideBarItemFourView()
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
    SBItemFourView()
}
