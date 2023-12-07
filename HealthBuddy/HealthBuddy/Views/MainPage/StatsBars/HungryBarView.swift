//
//  HungryView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct HungryBarView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        
            ZStack{
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 73, height: 23)
                    .cornerRadius(3.0)
                
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 70 * (data.buddy.nutrition/100), height: 20)
                
                Text("\(String(format: "%.0f", data.buddy.nutrition)) %")
                    .foregroundColor(.white)
                    .font(.system(size: 10))
            }
        }
    }


#Preview {
    HungryBarView()
}
