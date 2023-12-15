//
//  ProfilButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:21      *
//  *************************************************************************************
//

import SwiftUI

struct ProfilButtonView: View {
    @State private var isProfilViewActive = false

    var body: some View {
        Button(action: {
            isProfilViewActive.toggle()
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
        .fullScreenCover(isPresented: $isProfilViewActive) {
            ProfilView(isActive: $isProfilViewActive)
        }
    }
}


#Preview {
    ProfilButtonView()
}
