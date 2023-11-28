//
//  TopBarObject.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct TopBarObject: View {
    var body: some View {
        TopBarView()
        MenuButtonView()
            .offset(y: -100)
            .offset(x: -100)
        ProfilButtonView()
            .offset(x: 100)
            .offset(y: -158)
        
    }
}

#Preview {
    TopBarObject()
}
