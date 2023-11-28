//
//  HomeActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct HomeActivity: View {
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
    HomeActivity()
}
