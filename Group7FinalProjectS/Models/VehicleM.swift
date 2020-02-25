//
//  VehicleM.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
struct VehicleM : Codable {
    let vehicleIdentificationNumber, vehicleDescription, manufacturerName: String
    let isSelfDrive, isInsured: Bool
    let noOfSeat: Int
    let fuelType : String
    let topSpeed: Int = 0
    let mileage : Int = 0
    var vehicleType : VehicleT?
    let vehicleRent : VehicleRentM?
}
enum VehicleT: String, Codable {
    case car = "Car", motorcycle = "Motorcycle" , bus = "Bus"
}


