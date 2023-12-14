//
//  LoginPopUp.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

enum DisplayedPage {
    case login
    case newAccount
}

struct LoginPopUp: View {
    @EnvironmentObject var data :DataModel
    @Binding var displayedPage: DisplayedPage
    @State private var emailText: String = ""
    @State private var pwdText: String = ""
    @State private var isBouncing = false
    @State private var showAlert = false // Ajout de la variable showAlert
    @State private var showPasswordAlert = false
    
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            
            // MARK: - Logo HealthBuddy
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.thin)
            
            // MARK: - Title logo Text
            Text("Health Buddy".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // MARK: - Welcome Text
            Text("Get ready for a unique adventure where you'll have to make smart decisions to keep your HealthBuddy in great shape while improving your own health.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.8))
                .fontWeight(.medium)
            
            // MARK: - Email TextField
            MailFieldView(email: $emailText, showAlert: $showAlert)
            
            // MARK: - Password TextField
            PasswordfieldView(password: $pwdText)
            
            // MARK: - Create account button
            
            Button {
                displayedPage = .newAccount
            } label: {
                Text("Create your account")
                    .padding(.all)
                    .underline(true, color: .white)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            
            // MARK: - Login With Buttons
            HStack {
                
                // MARK: - Apple Button
                Button {
                    // TO DO : Action
                } label: {
                    Image(systemName: "apple.logo")
                    Text("Login with Apple")
                }
                .customButtonStyle()
                
                // MARK: - Google Button
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
                .customButtonStyle()
                
            }
            
            // MARK: - Play button
            Button {
                withAnimation(Animation.interpolatingSpring(mass: 1.0, stiffness: 100, damping: 10, initialVelocity: 0)) {
                    isBouncing.toggle()
                    // Vérification du mail
                    if isValidEmail(emailText) && isPasswordValid(pwdText){
                        data.isLogged = true
                    } else {
                        // Afficher une alerte en cas d'email non valide
                        //signIn()
                        showAlert = true
                    }
                }
                
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
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Erreur"),
                message: Text(isValidEmail(emailText) ? "Le mot de passe doit contenir au moins 7 caractères." : "Le mot de passe doit contenir au moins 7 caractères et l'email doit être valide."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", MailFieldView.emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    func isPasswordValid(_ password: String) -> Bool {
        return password.count >= 7
    }
}

//#Preview {
//    LoginPopUp(displayedPage: $DisplayedPage.login)
//        .background(Image("Wallpaper 2"))
//}


struct DeepStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
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
    }
}

struct CustomButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .font(.system(size: 14))
            .foregroundColor(Color.white)
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
    }
}

extension View {
    func deepStyle() -> some View {
        modifier(DeepStyle())
    }
    func customButtonStyle() -> some View {
        modifier(CustomButtonStyle())
    }
    
}

struct MailFieldView: View {
    @Binding var email: String
    @Binding var showAlert: Bool // Ajout de la variable showAlert
    static let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    
    var body: some View {
        TextField("Email/Login", text: $email)
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
            .disableAutocorrection(true)
    }
}

struct PasswordfieldView: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
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
    }
}





