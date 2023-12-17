//
//  ProfiilListView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct ProfilListView: View {
    @ObservedObject var userData: UserData

    var body: some View {
        VStack {
            List {
                
                DisclosureGroup("Change Email"){}
                
                DisclosureGroup("Change password"){}
                
                DisclosureGroup("Change username"){}
                
                DisclosureGroup("Change profile picture"){}
                
                DisclosureGroup("Description"){}
                
                DisclosureGroup("Trophy select"){}
                
                Text("Delete account")
                    .foregroundColor(.red)
            }
        }
    }
}

//#Preview {
//    ProfilListView(userData: userData)
//}
