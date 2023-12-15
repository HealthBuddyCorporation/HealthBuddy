//
//  ProfilPictureView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:24      *
//  *************************************************************************************
//

import SwiftUI

struct ProfilPictureView: View {
    var body: some View {
        VStack{
            ZStack{
                BlurEffect(style: .systemUltraThinMaterial)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
                    .cornerRadius(80)
                
                Image(systemName: "person.circle")
                    .resizable()
                    .background(Color.gray)
                    .cornerRadius(40)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ProfilPictureView()
}
