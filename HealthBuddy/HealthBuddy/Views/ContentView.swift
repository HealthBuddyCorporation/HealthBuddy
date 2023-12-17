//
//  ContentView.swift
//  HealthBuddy
//
//  Created by Student04 on 18/09/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var data :DataModel
    @EnvironmentObject var login :LoginViewModel
    var body: some View {
//        if login.session != nil {
            MainActivity()
            .onAppear{
                FBDatabase.instance.initialDB()
            }
//        }
//        else {
//            LoginPage()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        DeathView()
    }
}
