//
//  NewAccountPopup.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 29/09/2023.
//

import SwiftUI

struct NewAccountPopup: View {
    
    @State private var text: String = ""
    @State private var isBouncing = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            // Logo HealthBuddy
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.thin)
                .padding(-10)
            
            // Title logo Text
            Text("Health Buddy".uppercased())
                .font(.title.width(.condensed))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Welcome Text
            Text("Create your account and get to the adventure!")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.8))
                .fontWeight(.medium)
                .padding(-10)
            
            // FirstName TextField
            TextField("Enter your firstname", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // LastName TextField
            TextField("Enter your lastname", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // NickName TextField
            TextField("Enter your nickname", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Email TextField
            SecureField("Enter your Email", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Email TextField
            TextField("Enter your PhoneNumber", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Adress TextField
            TextField("Enter your adress", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Zip Code TextField
            TextField("Enter your Zip code", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            // Country Code TextField
            TextField("Enter your country", text: $text)
                .padding(.horizontal)
                .font(.system(size: 14))
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
                .accentColor(.primary)
                .shadow(radius: 10)
            
            Button {
                
            } label: {
                Text("Read RGP")
                    .underline(true, color: .white)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }

            HStack{
                Text("Test")
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    
                }
                
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
        .padding(20)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        .shadow(color: .black.opacity(0.5), radius: 20, y: 20)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
}

#Preview {
    NewAccountPopup()
        .background(Image("Wallpaper 2"))
}
