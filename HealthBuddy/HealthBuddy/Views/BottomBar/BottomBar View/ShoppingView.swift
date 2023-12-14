//
//  ShoppingView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 13/12/2023.
//

import SwiftUI

struct ShoppingView: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.linearGradient(colors: [.customColor, .green, .customColor], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 280, height: 250)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            BlurEffect(style: .systemUltraThinMaterialLight)
                .frame(width: 300, height: 250)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                .shadow(radius: 3)
            
            BlurEffect(style: .systemChromeMaterialDark)
                .frame(width: 300, height: 50)
                .cornerRadius(8)
                .padding(EdgeInsets(top: -125, leading: 10, bottom: 0, trailing: 0))
            
            BlurEffect(style: .systemThinMaterialLight)
                .frame(width: 150, height: 150)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 40, leading: -110, bottom: 0, trailing: 0))
            
            Rectangle()
                .foregroundColor(.customColor)
                .frame(width: 145, height: 145)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 40, leading: -110, bottom: 0, trailing: 0))
            
            Image(systemName: "tornado.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 35, leading: -105, bottom: 0, trailing: 0))
            
            Text("Title food")
                .padding(EdgeInsets(top: -110, leading: -130, bottom: 0, trailing: 0))
                .foregroundColor(.white)
            
            Text("Buy now")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: -55, leading: 175, bottom: 0, trailing: 0))
            
            Text("Info 1")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: -20, leading: 115, bottom: 0, trailing: 0))
            
            Text("Info 2")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 20, leading: 118, bottom: 0, trailing: 0))
            
            Text("Info 3")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 60, leading: 119, bottom: 0, trailing: 0))
            
            Text("Info 4")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 100, leading: 119, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    ShoppingView()
}
