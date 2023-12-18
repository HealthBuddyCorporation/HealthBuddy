//
//  UserData.swift
//  HealthBuddy
//
//  Created by roman domasik on 17/12/2023.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = "JohnDoe"
    @Published var email: String = "JD@gmail.com"
}
