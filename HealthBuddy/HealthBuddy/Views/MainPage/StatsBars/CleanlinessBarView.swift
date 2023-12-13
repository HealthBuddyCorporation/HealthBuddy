//
//  CleanlinessView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct CleanlinessBarView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        
        ZStack{
            
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 73, height: 23)
                    .cornerRadius(3.0)
            VStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 70 * (data.buddy.hygiene/100), height: 20)
                    .cornerRadius(3.0)
            }
                Text("\(String(format: "%.0f", data.buddy.hygiene)) %")
                    .foregroundColor(.white)
                    .font(.system(size: 10))
            }
        }
}

#Preview {
    CleanlinessBarView()
}
