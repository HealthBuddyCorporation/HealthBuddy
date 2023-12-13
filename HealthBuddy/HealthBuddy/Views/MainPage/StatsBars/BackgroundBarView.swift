//
//  BackgroundBarView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 13/12/2023.
//

import SwiftUI

struct BackgroundBarView: View {
    var body: some View {
        BlurEffect(style: .systemChromeMaterialDark)
            .frame(width: 400, height: 60)
    }
}

#Preview {
    BackgroundBarView()
}
