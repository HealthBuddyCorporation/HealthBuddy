//
//  LoginPopUp.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

struct LoginPopUp: View {
    
    @State private var text: String = ""
    @State private var isBouncing = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            
            // Logo HealthBuddy
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.thin)
            
            // Title logo Text
            Text("Health Buddy".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Welcome Text
            Text("Get ready for a unique adventure where you'll have to make smart decisions to keep your HealthBuddy in great shape while improving your own health.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.8))
                .fontWeight(.medium)
            
            // Email TextField
            TextField("Email/Login", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
                .fontWeight(.light)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 35)
                .background(.white.opacity(0.2).gradient)
                .cornerRadius(4)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke()
                        .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .top, endPoint: .bottom))
                )
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Password TextField
            SecureField("Password", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
                .fontWeight(.light)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 35)
                .background(.white.opacity(0.2).gradient)
                .cornerRadius(4)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke()
                        .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .top, endPoint: .bottom))
                )
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Create account button
            
            Button {
                // TO DO : Action
            } label: {
                Text("Create your account")
                    .padding(.all)
                    .underline(true, color: .white)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            
            // Login With Buttons
            HStack {
                
                // Apple Button
                Button {
                    // TO DO : Action
                } label: {
                    Image(systemName: "apple.logo")
                    Text("Login with Apple")
                }
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .fontWeight(.light)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 30)
                .background(.white.opacity(0.2).gradient)
                .cornerRadius(4)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke()
                        .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .top, endPoint: .bottom))
                )
                .shadow(radius: 2)
                
                // Google Button
                Button {
                    // TO DO : Action
                } label: {
                    Image(systemName: "g.circle.fill")
                        .imageScale(.large)
                        .foregroundColor(.white)
                    Text("Login with Google")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                }
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .fontWeight(.light)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 30)
                .background(.white.opacity(0.2).gradient)
                .cornerRadius(4)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke()
                        .foregroundStyle(.linearGradient(colors:[.white.opacity(10), .clear], startPoint: .top, endPoint: .bottom))
                )
                .shadow(radius: 2)
            }
            
            // Play button
            Button {
                // TO DO : Action
                withAnimation(Animation.interpolatingSpring(mass: 1.0, stiffness: 100, damping: 10, initialVelocity: 0)) {
                    isBouncing.toggle() }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    withAnimation(.easeOut) {
                        isBouncing = false
                    }
                }
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundColor(.white)
            }
            .frame(width: 50, height: 50)
            .background(.white.opacity(0.2).gradient)
            .cornerRadius(25)
            .scaleEffect(isBouncing ? 1.2 : 1.0)
            .padding(10)
            .overlay {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 0.5))
                    .foregroundStyle(.linearGradient(colors:[.white.opacity(1), .clear, .white.opacity(0.5), .clear], startPoint: .bottomLeading, endPoint: .topTrailing))
            }
            .frame(width: 70, height: 70)
            .padding(10)
            .overlay {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 1))
                    .foregroundStyle(.linearGradient(colors:[.white.opacity(1), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
            }
            .accentColor(.primary)
            .shadow(radius: 10)
            
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        .shadow(color: .black.opacity(0.5), radius: 20, y: 20)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
}

#Preview {
    LoginPopUp()
        .background(Image("Wallpaper 2"))
}
