//
//  MainActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 29/09/2023.
//

import SwiftUI

struct MainActivity: View {
    @EnvironmentObject var data :DataModel
    
    var body: some View {
        if (data.buddy.isAlive){
            HomeActivity()
                .onChange(of: data.buddy.hp){ hp in
                    print("hp change")
                    if(hp <= 0){
                        data.buddy.isAlive = false
                    }
                }
        }
        else{
            ZStack{
                HomeActivity()
                DeathView()
            }
            
        }
    }
        
}

#Preview {
    MainActivity()
}
