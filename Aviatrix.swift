//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var author = ""
    var location = "St. Louis"
  var data = AviatrixData()
    init(authorName : String) {
       author = authorName
    }
    func start() -> Bool {
        return true
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(target : String)-> Int {
        return data.knownDistances[location]![target]!;
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
var running = false

func start() -> Bool {
    running = true
    return running
}
