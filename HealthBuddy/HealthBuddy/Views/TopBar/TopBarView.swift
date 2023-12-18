//
//  TopBarView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 23:59      *
//  *************************************************************************************
//

import SwiftUI

struct TopBarView: View {
    @EnvironmentObject var data :DataModel
    @EnvironmentObject var login :LoginViewModel
    var body: some View {
        
        ZStack{
            HStack{
                ProfilButtonView()
                
                VStack{
                    charNameView(name: data.buddy.name)
                    charLevelView(level: data.buddy.level)
                    ZStack{
                        Button{
                            login.signOut()
                        }label: {
                            Text("Disconnect")
                        }
                    }.padding(EdgeInsets(top: -70, leading: 0, bottom: 0, trailing: 0))
                }.padding(EdgeInsets(top: 110, leading: 60, bottom: -40, trailing: 70))
                
                SettingsButtonView()
                    .padding(.trailing, 0)
            }.padding(.top, 40)
            
        }
    }
}

#Preview {
    TopBarView()
}
