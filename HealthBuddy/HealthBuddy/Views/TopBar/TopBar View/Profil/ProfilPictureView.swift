//
//  ProfilPictureView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct ProfilPictureView: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 80, height: 80)
                    .cornerRadius(80)
                
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.4)
                    .frame(width: 70, height: 70)
                    .cornerRadius(60)
                
                Image(systemName: "person.circle")
                    .resizable()
                    .background(Color.gray)
                    .cornerRadius(40)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ProfilPictureView()
}
