//
//  BuddyStat.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import SwiftUI

struct BuddyStat: View {
    let stat :String
    @Binding var value :Double
    
    var body: some View {
        HStack{
            Text("\(stat) : \(String(format: "%.1f", value))")
        }
    }
}

//#Preview {
//    BuddyStat(stat: "Health", value: DataModel().buddy.hp)
//}
