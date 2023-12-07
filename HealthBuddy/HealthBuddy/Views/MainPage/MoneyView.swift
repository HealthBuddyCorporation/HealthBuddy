//
//  MoneyView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct MoneyView: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 400, height: 30)
                .foregroundColor(.black.opacity(0.2))
            
            HStack{
                Text("Credit:")
                    .font(.system(size: 12))
                Text("AMMOUNT")
                    .font(.system(size: 12))
            }
            .padding(EdgeInsets(top: 0, leading: -185, bottom: 0, trailing: 0))
            
            HStack{
                Text("Buddys:")
                    .font(.system(size: 12))
                Text("AMMOUNT")
                    .font(.system(size: 12))
            }
            .padding(EdgeInsets(top: 0, leading: 250, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    MoneyView()
}
