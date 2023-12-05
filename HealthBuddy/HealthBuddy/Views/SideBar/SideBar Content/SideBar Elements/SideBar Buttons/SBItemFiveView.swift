//
//  SBItemFiveView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SBItemFiveView: View {
    
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
        .popover(isPresented: $isPopoverPresented, arrowEdge: .top, content: {
            VStack {
                SideBarItemFiveView()
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
    SBItemFiveView()
}
