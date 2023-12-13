//
//  MainActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 29/09/2023.
//

import SwiftUI

struct MainActivity: View {
    @EnvironmentObject var data :DataModel
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        if (data.buddy.isAlive){
            HomeActivity()
                .onReceive(timer) { _ in
                    data.StatOverTime()
                }
                .onChange(of: data.buddy.hp){ hp in
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
