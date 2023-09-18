//
//  HealthBuddyApp.swift
//  HealthBuddy
//
//  Created by Student04 on 18/09/2023.
//

import SwiftUI

@main
struct HealthBuddyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
