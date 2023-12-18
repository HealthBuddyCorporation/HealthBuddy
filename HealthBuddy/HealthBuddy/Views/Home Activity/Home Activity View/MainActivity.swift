//
//  MainActivity.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 29/09/2023.
//

import SwiftUI

struct MainActivity: View {
    @EnvironmentObject var data :DataModel
    var body: some View {
        VStack{
            HomeActivity()
                .onAppear{
                    data.getBuddy()
                    data.getInventoriesList()
                }
        }
    }
}

#Preview {
    MainActivity()
}
