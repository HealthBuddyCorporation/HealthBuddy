//
//  LoginPage.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

struct LoginPage: View {
    @State var displayedPage: DisplayedPage = .login
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        
        switch displayedPage {
        case .login:
           // Button("Cancel", role: .cancel){}
            ZStack{
                LoginAnimation()
                LoginPopUp(displayedPage: $displayedPage)
            }
        case .newAccount:
            ZStack{
                NewAccountAnimation()
                NewAccountPopup(displayedPage: $displayedPage)
            }
        }
    }
    
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
