//
//  CircledFood.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import SwiftUI

struct CircledFood: View {
    var food :Food
    var available :Bool
    
    var body: some View {
        VStack{
            Text(food.name)
            Text("quantity: \(food.quantity)")
                .font(.caption2)
        }
        .frame(width: 50, height: 50)
        .padding()
        .background(available ? Color.white : Color.red)
        .foregroundColor(.black)
        .opacity(0.5)
        .cornerRadius(8)
    }
}

//#Preview {
//    CircledFood()
//}
