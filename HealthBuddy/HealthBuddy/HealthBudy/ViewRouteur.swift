//
//  ViewRouteur.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 26/09/2023.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .home
    
}


enum Page {
    case home
    case liked
    case records
    case user
}
