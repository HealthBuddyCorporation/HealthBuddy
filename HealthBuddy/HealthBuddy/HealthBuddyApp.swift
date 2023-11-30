//
//  HealthBuddyApp.swift
//  HealthBuddy
//
//  Created by Student04 on 18/09/2023.
//

import SwiftUI

@main
struct HealthBuddyApp: App {
    @StateObject var data = DataModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
    }
}
