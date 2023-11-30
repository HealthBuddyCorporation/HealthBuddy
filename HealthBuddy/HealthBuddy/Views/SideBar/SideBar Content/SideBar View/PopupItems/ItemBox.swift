//
//  ItemBox.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import SwiftUI

struct ItemBox: View {
    var food :Food?
    var cleaner :Cleaner?
    var available :Bool
    
    var body: some View {
        if let item = food{
            VStack{
                Text(item.name)
                Text("quantity: \(item.quantity)")
                    .font(.caption2)
            }
            .frame(width: 50, height: 50)
            .padding()
            .background(available ? Color.white : Color.red)
            .foregroundColor(Color.white)
            .opacity(0.5)
            .cornerRadius(8)
        }
        if let item = cleaner{
            VStack{
                Text(item.name)
                Text("quantity: \(item.quantity)")
                    .font(.caption2)
            }
            .frame(width: 50, height: 50)
            .padding()
            .background(available ? Color.white : Color.red)
            .foregroundColor(Color.white)
            .opacity(0.5)
            .cornerRadius(8)
        }
    }
}

#Preview {
    ItemBox(available: true)
}
