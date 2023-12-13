//
//  BlurEffect.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 13/12/2023.
//

import Foundation
import UIKit
import SwiftUI


struct BlurEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
