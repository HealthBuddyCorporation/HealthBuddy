//
//  ProfilInfoView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct ProfilInfoView: View {
    var body: some View {
        
        VStack{
            
            Text("User Name")
                .padding()
            
            HStack{
            
                Text("User Score")
                    .offset(x: -50)
                
                Text("User location")
                    .offset(x: 50)
            }
        }
    }
}

#Preview {
    ProfilInfoView()
}
