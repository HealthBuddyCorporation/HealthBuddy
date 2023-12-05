//
//  TestViews.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 05/12/2023.
//

import SwiftUI

struct PopupBackgroundBox: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .foregroundColor(.white.opacity(0.3))
                    .blur(radius: 10)
                Rectangle()
                    .frame(width: 380, height: 600)
                    .foregroundStyle(.linearGradient(colors:[.clear.opacity(0.5), .white.opacity(0.5), .clear.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(4)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 0.5)
                            .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                    )
                    .accentColor(.primary)
                    .shadow(radius: 10)
                
            }
        }
    }
}

#Preview {
    PopupBackgroundBox()
}
