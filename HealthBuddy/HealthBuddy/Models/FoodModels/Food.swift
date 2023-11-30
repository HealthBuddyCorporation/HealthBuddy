//
//  Food.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

class Food: Hashable, Codable, Identifiable, Transferable{
    var id :Int
    var name :String
    var quantity :Int
    var foodValue :Double
    var weightValue :Double
    var happinessValue :Double
}

extension Food{
    static func == (lhs: Food, rhs: Food) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static var transferRepresentation: some TransferRepresentation{
        CodableRepresentation(for: Food.self,contentType: .food)
    }
}

extension UTType{
    static let food = UTType(exportedAs: "be.technifutur.HealthBuddy.food")
}
