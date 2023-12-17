//
//  Cleaner.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

struct Cleaner: Hashable, Codable, Identifiable, Transferable{
    var id :Int
    var name :String
    var quantity :Int
    var cleanValue :Double
    var healthValue :Double
    var happinessValue :Double
    var price :Int = 10
    var isPremium :Bool = false
}

extension Cleaner{
    static var transferRepresentation: some TransferRepresentation{
        CodableRepresentation(for: Cleaner.self,contentType: .cleaner)
    }
}

extension UTType{
    static let cleaner = UTType(exportedAs: "be.technifutur.HealthBuddy.cleaner")
}
