//
//  Droppable.swift
//  HealthBuddy
//
//  Created by Student04 on 04/12/2023.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

enum Droppable: Codable, Transferable{
    case none
    case food(Food)
    case cleaner(Cleaner)
    
    static var transferRepresentation: some TransferRepresentation{
        ProxyRepresentation { Droppable.food($0) }
        ProxyRepresentation { Droppable.cleaner($0) }
    }
    
    var food :Food? {
        switch self{
        case .food(let food): return food
        default: return nil
        }
    }
    var cleaner :Cleaner? {
        switch self{
        case .cleaner(let cleaner): return cleaner
        default: return nil
        }
    }
}
