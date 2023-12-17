//
//  ProfilView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ProfilView: View {
    
    @Binding var isActive: Bool
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                ProfilPictureView()
                ProfilInfoView(userData: UserData.init())
                ProfilListView(userData: UserData.init())
            }
            
            Button("Back")
            {
                isActive = false
            }
            .padding()
            .foregroundColor(.white)
        }
        .navigationBarTitle("Profil", displayMode: .inline)
    }
}

#Preview {
    ProfilView(isActive: .constant(true))
}
