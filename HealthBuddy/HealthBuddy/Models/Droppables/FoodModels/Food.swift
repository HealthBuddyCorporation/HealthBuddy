//
//  Food.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

struct Food: Hashable, Codable, Identifiable, Transferable{
    var id :Int
    var name :String
    var quantity :Int
    var foodValue :Double
    var weightValue :Double
    var happinessValue :Double
    var price :Int = 10
    var isPremium :Bool = false
}

extension Food{
    static var transferRepresentation: some TransferRepresentation{
        CodableRepresentation(for: Food.self,contentType: .food)
    }
}

extension UTType{
    static let food = UTType(exportedAs: "be.technifutur.HealthBuddy.food")
}
