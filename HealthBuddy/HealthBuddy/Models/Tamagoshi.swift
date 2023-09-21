//
//  Tamagoshi.swift
//  HealthBuddy
//
//  Created by Student04 on 21/09/2023.
//

import Foundation
import SwiftUI

struct Tamagoshi :Codable, Hashable{
    
    var name :String
    private var imgPath :String
    var image :Image{
        Image(imgPath)
    }
    
    // Basic Stats
    var health :Int
    var hunger :Int
    var weight :Int
    var hygiene :Int
    var happyness :Int
    var rest :Int
    var level :Int
    var exp :Int
    
    //Combat Stats
    var atk :Int
    var def :Int
    var vit :Int
    var crit :Double
}
