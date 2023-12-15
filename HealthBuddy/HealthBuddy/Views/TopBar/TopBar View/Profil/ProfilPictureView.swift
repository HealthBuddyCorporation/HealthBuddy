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
                
                BlurEffect(style: .systemUltraThinMaterial)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
                    .cornerRadius(80)
                
                Image(systemName: "person.circle")
                    .resizable()
                    .background(Color.gray)
                    .cornerRadius(40)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ProfilPictureView()
}
