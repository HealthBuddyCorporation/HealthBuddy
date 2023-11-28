//
//  ProfilView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        
        VStack{
            TopBarView()
            
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 80, height: 80)
                    .cornerRadius(80)
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.4)
                    .frame(width: 70, height: 70)
                    .cornerRadius(60)
                
                Image(systemName: "person.circle")
                    .resizable()
                    .background(Color.gray)
                    .cornerRadius(40)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
            }
            
            Text("User Name")
                .padding()
            HStack{
                Text("User Score")
                    .offset(x: -50)
                Text("User location")
                    .offset(x: 50)
            }
            
            VStack{
                List {
                    Text("Élément 1")
                    Text("Élément 2")
                    Text("Élément 3")
                    Text("Élément 4")
                    Text("Élément 5")
                    Text("Élément 6")
                    Text("Élément 7")
                    Text("Élément 8")
                    Text("Élément 9")
                    Text("Élément 10")
                    Text("Élément 11")
                    Text("Élément 12")
                    Text("Élément 13")
                    Text("Élément 14")
                    Text("Élément 15")
                }
            }
            
        } .ignoresSafeArea()
    }
}

#Preview {
    ProfilView()
}
