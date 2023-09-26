//
//  MainView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 26/09/2023.
//

import SwiftUI

struct MainView: View {
    
    @State var index = 0
    
    var body: some View {

        VStack{
            
            ZStack{
                Color.red
            }
            .padding(.bottom, -1000)
            
            CustomTabBar(index: self.$index)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
