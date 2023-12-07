//
//  ProfilButtonView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct ProfilButtonView: View {
    
    @State private var isProfilViewActive = false

    var body: some View {
        
        NavigationLink(destination: ProfilView(isActive: $isProfilViewActive), isActive: $isProfilViewActive) {
            EmptyView()
        }
        .hidden()

        Button(action: {
            isProfilViewActive.toggle()
        }) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .padding(2)
                .background(Color.gray)
                .clipShape(Circle())
        }
    }
}


#Preview {
    ProfilButtonView()
}
