//
//  HealthBarView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct HealthBarView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 73, height: 23)
                .cornerRadius(3.0)
            
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 70 * (data.buddy.hp/data.buddy.maxHP), height: 20)
                .cornerRadius(3.0)
            
            Text("\(String(format: "%.0f", data.buddy.hp))/ \(String(format: "%.0f", data.buddy.maxHP))")
                .foregroundColor(.white)
                .font(.system(size: 10))
        }
    }
}

#Preview {
    HealthBarView()
}
