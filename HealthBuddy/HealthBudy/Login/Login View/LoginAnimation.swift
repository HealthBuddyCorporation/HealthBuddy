//
//  LoginAnimation.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

struct LoginAnimation: View {
    
    @State private var animatedGradient: Bool = false
    
    var body: some View {
        
        ZStack {
            // MARK: - Background Animation
            Color.clear
                .frame(maxWidth: .infinity)
                .background {
                    LinearGradient(colors: [.red, .purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                        .hueRotation(.degrees(animatedGradient ? 45 : 0))
                        .onAppear {
                            withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                                animatedGradient.toggle()
                            }
                            
                        }
                }
        }
    }
}

#Preview {
    LoginAnimation()
}
