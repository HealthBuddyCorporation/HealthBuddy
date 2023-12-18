//
//  PopupContentBackgroundBox.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 05/12/2023.
//

import SwiftUI

struct PopupContentBackgroundBox: View {
    var body: some View {
        ZStack{
            BlurEffect(style: .systemUltraThinMaterial)
                .frame(width: 350, height: 350)
                .cornerRadius(8)
                .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .top, endPoint: .bottom)))
                .shadow(color: .black.opacity(0.4), radius: 10, x:10 ,y: 10)
        }
    }
}

#Preview {
    PopupContentBackgroundBox()
}
