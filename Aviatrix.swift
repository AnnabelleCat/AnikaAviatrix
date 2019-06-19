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
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    var amountFilled = Double()
    var fuelCost = 0.0
  var data = AviatrixData()
    init(authorName : String) {
       author = authorName
    }
    func start() -> Bool {
        return true
    }
    
    func refuel() -> Double {
        amountFilled = maxFuel - fuelLevel
        fuelLevel = maxFuel
        fuelCost = fuelCost + amountFilled*data.fuelPrices[location]!
        fuelCost = Double(round(100.0*fuelCost)/100.0)
        amountFilled = Double(round(10.0*amountFilled)/10.0)
        return data.fuelPrices[location]!
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled = distanceTraveled + data.knownDistances[location]![destination]!;
        milesPerGallon = 0.65 - fuelLevel*0.00005
        fuelLevel = maxFuel - milesPerGallon*Double(distanceTraveled)
        fuelLevel = Double(round(10.0*fuelLevel)/10.0)
        milesPerGallon = Double(round(100.0*milesPerGallon)/100.0)
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
