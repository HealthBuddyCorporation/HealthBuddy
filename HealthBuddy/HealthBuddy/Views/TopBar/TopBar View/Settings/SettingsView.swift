//
//  SettingsView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var isActive: Bool
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                SettingsInfoView()
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                SettingsListView()
            }
            
            Button("Back")
            
            {
                isActive = false
            }
            .padding()
            .foregroundColor(.white)
        }
        .navigationBarTitle("Settings", displayMode: .inline)
    }
}

#Preview {
    SettingsView(isActive: .constant(true))
}
