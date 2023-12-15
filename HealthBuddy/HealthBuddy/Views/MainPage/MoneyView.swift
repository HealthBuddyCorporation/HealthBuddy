//
//  MoneyView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:17      *
//  *************************************************************************************
//

import SwiftUI

struct MoneyView: View {
    var body: some View {
        
        ZStack{
            BlurEffect(style: .systemChromeMaterialDark)
                .frame(width: 400, height: 30)
            
            HStack{
                Text("Credit:")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                Text("$AMMOUNT")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 0, leading: -185, bottom: 0, trailing: 0))
            
            HStack{
                Text("Buddys:")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                Text("$AMMOUNT")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 0, leading: 250, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    MoneyView()
}
