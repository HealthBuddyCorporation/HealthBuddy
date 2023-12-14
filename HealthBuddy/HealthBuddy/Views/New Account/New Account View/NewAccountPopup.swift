//
//  NewAccountPopup.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 29/09/2023.
//

import SwiftUI

struct NewAccountPopup: View {
    @Binding var displayedPage: DisplayedPage
    @State private var createFirstName: String = ""
    @State private var createLastName: String = ""
    @State private var createNickName: String = ""
    @State private var createEmail: String = ""
    @State private var createPassword: String = ""
    @State private var createPhoneNumber: String = ""
    @State private var createAdress: String = ""
    @State private var createZipCode: String = ""
    @State private var createCountry: String = ""
    @State private var isBouncing = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            // MARK: - Logo HealthBuddy
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.thin)
                .padding(-10)
            
            // MARK: - Title logo Text
            Text("Health Buddy".uppercased())
                .font(.title.width(.condensed))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // MARK: - Welcome Text
            Text("Create your account and get to the adventure!")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.8))
                .fontWeight(.medium)
                .padding(-10)
            
            // MARK: - FirstName TextField
            TextField("Enter your firstname", text: $createFirstName)
                .depthStyle()
            
            // MARK: - LastName TextField
            TextField("Enter your lastname", text: $createLastName)
                .depthStyle()
            
            // MARK: - NickName TextField
            TextField("Enter your nickname", text: $createNickName)
                .depthStyle()
            
            // MARK: - Email TextField
            TextField("Enter your Email", text: $createEmail)
                .depthStyle()
            TextField("Enter your Password", text: $createPassword)
                .depthStyle()
            
            // MARK: - Email TextField
            TextField("Enter your PhoneNumber", text: $createPhoneNumber)
                .depthStyle()
            
            // MARK: - Adress TextField
            TextField("Enter your adress", text: $createAdress)
                .depthStyle()
            
            // MARK: - Zip Code TextField
            TextField("Enter your Zip code", text: $createZipCode)
                .depthStyle()
            
            // MARK: - Country Code TextField
            TextField("Enter your country", text: $createCountry)
                .depthStyle()
            
            // MARK: - Read RGPD Button
            Button {
                
            } label: {
                Text("Read RGPD")
                    .underline(true, color: .white)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            
            Button {
                displayedPage = .login
            } label: {
                Text("Cancel")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            // MARK: - I accept Switch
            
            
            
            
            // MARK: - Play button
            Button {
                print("clickity")
                FBLoginService.instance.signUp(createEmail, createPassword)
                displayedPage = .login
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

//#Preview {
//    NewAccountPopup()
//        .background(Image("Wallpaper 2"))
//}

struct DepthStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
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
    }
}

extension View {
    func depthStyle() -> some View {
        modifier(DepthStyle())
    }
}

//#Preview {
//    NewAccountPopup()
//}
