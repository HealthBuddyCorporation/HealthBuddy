//
//  LoginPage.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        
        ZStack{
            // Show Login Animation in Background
            LoginAnimation()
            // Show Login PopUp in Foreground
            LoginPopUp()
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
