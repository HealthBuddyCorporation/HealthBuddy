//
//  ProfilView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:24      *
//  *************************************************************************************
//

import SwiftUI

struct ProfilView: View {
    @Binding var isActive: Bool
    var body: some View {
        ZStack{
            HStack{
                ZStack{
                    Button("Close") {
                        isActive = false
                    }.padding(EdgeInsets(top: -380, leading: -180, bottom: 0, trailing: 0))
                    VStack{
                        ProfilPictureView()
                        ProfilInfoView()
                        ProfilListView()
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    ProfilView(isActive: .constant(true))
}
