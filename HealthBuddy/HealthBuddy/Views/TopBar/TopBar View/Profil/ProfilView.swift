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
    @EnvironmentObject var data :DataModel
    var body: some View {
        
        NavigationView {
            
            VStack{
                ProfilPictureView(profilePic: data.user.profilePicture)
                ProfilInfoView(user: data.user)
                ProfilListView(userData: UserData.init())
            }
        }
    }
}

#Preview {
    ProfilView()
        .environmentObject(DataModel())
}
