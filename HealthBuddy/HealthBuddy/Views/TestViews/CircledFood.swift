//
//  CircledFood.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import SwiftUI

struct CircledFood: View {
    var food :Food
    
    var body: some View {
        VStack{
            Text(food.name)
            Text("quantity: \(food.quantity)")
                .font(.caption2)
        }
        .padding()
        .background(
            Circle()
                .stroke(Color.blue)
        )
    }
}

//#Preview {
//    CircledFood()
//}
