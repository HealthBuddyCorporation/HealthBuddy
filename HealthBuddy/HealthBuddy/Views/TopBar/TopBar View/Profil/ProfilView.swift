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
        
        NavigationView {
            
            VStack{
                ProfilPictureView()
                ProfilInfoView(userData: UserData.init())
                ProfilListView(userData: UserData.init())
            }
        }
    }
}

#Preview {
    ProfilView(isActive: .constant(true))
}
