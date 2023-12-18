//
//  ContentView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    TopBarView()
                        .offset(y: 32)
                    MainContentView()
                        .offset(y: 21)
                    BottomBarView()
                        .offset(y: -57)
                }
                ZStack{
                    SideBarView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
