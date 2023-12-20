//
//  CharacterView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//

import SwiftUI
import RiveRuntime

struct CharacterView: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        
        switch data.currentAnimation{
        case "BigManIdle":
            RiveViewModel(fileName: "BigManIdle").view()
                .frame(width: 600, height: 600)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
                .ignoresSafeArea()
        case "BigManEat":
            RiveViewModel(fileName: "BigManEat").view()
                .frame(width: 600, height: 600)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
                .ignoresSafeArea()
        case "BigManFat":
            RiveViewModel(fileName: "BigManFat").view()
                .frame(width: 600, height: 600)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
                .ignoresSafeArea()
        case "BigManHungry":
            RiveViewModel(fileName: "BigManHungry").view()
                .frame(width: 600, height: 600)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
                .ignoresSafeArea()
        default :
            RiveViewModel(fileName: "BigManIdle").view()
                .frame(width: 600, height: 600)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 350, trailing: 0))
                .ignoresSafeArea()
        }
    }
}

#Preview {
    CharacterView()
}
