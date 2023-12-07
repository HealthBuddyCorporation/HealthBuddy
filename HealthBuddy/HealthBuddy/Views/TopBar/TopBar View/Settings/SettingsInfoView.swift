//
//  SettingsInfoView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct SettingsInfoView: View {
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .frame(width: 430, height:100)
                .foregroundColor(.clear)
                .padding(EdgeInsets(top: -439, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    SettingsInfoView()
}
