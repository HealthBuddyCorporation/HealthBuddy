//
//  JsonFunctions.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import Foundation

func load<T :Decodable>(_ filename :String) -> T{
    let data :Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("\(filename) not found in main Bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("\(filename) didn't load correctly:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Could not parse \(filename) as \(T.self) :\n\(error)")
    }
}
