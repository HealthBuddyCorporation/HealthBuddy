//
//  MainFrameBackgroundView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 14/12/2023.
//

import SwiftUI

struct MainFrameBackgroundView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.customColor, .green], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -380)
                .shadow(radius: 10)
        }
    }
}

#Preview {
    MainFrameBackgroundView()
}
