//
//  Toy.swift
//  HealthBuddy
//
//  Created by Student04 on 06/12/2023.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

struct Toy: Hashable, Codable, Identifiable, Transferable{
    var id :Int
    var name :String
    var quantity :Int
    var cleanValue :Double
    var healthValue :Double
    var happinessValue :Double
}

extension Toy{
    static var transferRepresentation: some TransferRepresentation{
        CodableRepresentation(for: Toy.self,contentType: .toy)
    }
}

extension UTType{
    static let toy = UTType(exportedAs: "be.technifutur.HealthBuddy.toy")
}
