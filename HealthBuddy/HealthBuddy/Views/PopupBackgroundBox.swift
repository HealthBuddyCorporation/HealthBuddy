//
//  TestViews.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 05/12/2023.
//

import SwiftUI

struct PopupBackgroundBox: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                BlurEffect(style: .systemChromeMaterialDark)
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

#Preview {
    PopupBackgroundBox()
}
