//
//  VehicleRent.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

class VehicleRent 
{
        var vehicleRentID : Int
        var rentStartDate : String
        var rentEndDate : String
        var rentInNumberOfDays : Float = 0.0
        var vehicles = [String: Vehicle]()
        var numberOfKmDrived : Int
        var rentInKm : Float = 0.0
        var totalBillToPay : Float = 0.0
        
        init(vehicleRentID : Int, rentStartDate : String, rentEndDate : String, numberOfKmDrived : Int) {
            self.vehicleRentID = vehicleRentID
            self.rentStartDate = rentStartDate
            self.rentEndDate = rentEndDate
            self.numberOfKmDrived = numberOfKmDrived
        }
        
}








