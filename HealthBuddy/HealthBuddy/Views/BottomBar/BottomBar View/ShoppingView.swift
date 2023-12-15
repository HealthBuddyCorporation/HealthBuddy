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
            BlurEffect(style: .systemUltraThinMaterialLight)
                .frame(width: 200, height: 150)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                .shadow(radius: 3)
            
            BlurEffect(style: .systemChromeMaterialDark)
                .frame(width: 200, height: 50)
                .cornerRadius(8)
                .padding(EdgeInsets(top: -75, leading: 10, bottom: 0, trailing: 0))
            
            Rectangle()
                .foregroundColor(.customColor)
                .frame(width: 65, height: 65)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 30, leading: -80, bottom: 0, trailing: 0))
            
            Image(systemName: "tornado.circle.fill")
                .resizable()
                .frame(width: 55, height: 55)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 30, leading: -75, bottom: 0, trailing: 0))
            
            Text("Title food")
                .padding(EdgeInsets(top: -60, leading: -80, bottom: 0, trailing: 0))
                .foregroundColor(.white)
            
            Text("Buy now")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 120, leading: -80, bottom: 0, trailing: 0))
            
            Text("Info 1")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
            
            Text("Info 2")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
            
            Text("Info 3")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 60, leading: 40, bottom: 0, trailing: 0))
            
            Text("Info 4")
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 100, leading: 40, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    ShoppingView()
}
