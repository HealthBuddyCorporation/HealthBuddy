//
//  HungryView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct HungryBarView: View {
    var body: some View {
        
            ZStack{
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 73, height: 23)
                    .cornerRadius(3.0)
                
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 70, height: 20)
                
                Text("percent")
                    .foregroundColor(.white)
                    .font(.system(size: 10))
            }
        }
    }


#Preview {
    HungryBarView()
}
