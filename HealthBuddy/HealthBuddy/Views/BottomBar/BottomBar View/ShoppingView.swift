//
//  ShoppingView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 13/12/2023.
//

import SwiftUI

struct ShoppingView: View {
    var food :Food?
    var cleaner :Cleaner?
    var toy :Toy?
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 880)
                .foregroundStyle(.clear)
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
                .foregroundColor(.mainYellow)
                .padding(EdgeInsets(top: 30, leading: -75, bottom: 0, trailing: 0))
            
            if let food = food{
                Text(food.name)
                    .padding(EdgeInsets(top: -60, leading: -80, bottom: 0, trailing: 0))
                    .foregroundColor(.white)
                
                Text("Buy now")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 120, leading: -80, bottom: 0, trailing: 0))
                
                Text("Food: \(String(format: "%.0f", food.foodValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Weight: \(String(format: "%.0f", food.weightValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Joy: \(String(format: "%.0f", food.happinessValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 60, leading: 40, bottom: 0, trailing: 0))
                
                Text("Price: \(food.price)")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 100, leading: 40, bottom: 0, trailing: 0))
            }
            if let cleaner = cleaner{
                Text(cleaner.name)
                    .padding(EdgeInsets(top: -60, leading: -80, bottom: 0, trailing: 0))
                    .foregroundColor(.white)
                
                Text("Buy now")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 120, leading: -80, bottom: 0, trailing: 0))
                
                Text("Hygiene: \(String(format: "%.0f", cleaner.cleanValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Health: \(String(format: "%.0f", cleaner.healthValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Joy: \(String(format: "%.0f", cleaner.happinessValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 60, leading: 40, bottom: 0, trailing: 0))
                
                Text("Price: \(cleaner.price)")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 100, leading: 40, bottom: 0, trailing: 0))
            }
            if let toy = toy{
                Text(toy.name)
                    .padding(EdgeInsets(top: -60, leading: -80, bottom: 0, trailing: 0))
                    .foregroundColor(.white)
                
                Text("Buy now")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 120, leading: -80, bottom: 0, trailing: 0))
                
                Text("Hygiene: \(String(format: "%.0f", toy.cleanValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Health: \(String(format: "%.0f", toy.healthValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Joy: \(String(format: "%.0f", toy.happinessValue))")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 60, leading: 40, bottom: 0, trailing: 0))
                
                Text("Price: \(toy.price)")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 100, leading: 40, bottom: 0, trailing: 0))
            }
        }
    }
}

//#Preview {
//    ShoppingView()
//}
