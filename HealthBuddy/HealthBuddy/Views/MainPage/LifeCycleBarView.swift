//
//  LifeCycleBarView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct LifeCycleBarView: View {
    var body: some View {
        
        ZStack{
            
            BackgroundBarView()
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            
            HealthBarView()
                .padding(EdgeInsets(top: 0, leading: -185, bottom: 0, trailing: 0))
            
            HungryBarView()
                .padding(EdgeInsets(top: 0, leading: -85, bottom: 0, trailing: 0))
            
            CleanlinessBarView()
                .padding(EdgeInsets(top: 0, leading: 105, bottom: 0, trailing: 0))
            
            HappynessBarView()
                .padding(EdgeInsets(top: 0, leading: 300, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    LifeCycleBarView()
}
