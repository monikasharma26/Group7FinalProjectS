//
//  Car.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Car
{
    var identificationNumber: String
    var description: String
    var isSelfDrive: Bool
    var manufacturerName: String
    var isInsured: Bool
    var vehicleNoOfSeats: Int
    var insuranceProviderName: String
    var seat: Int
    var fuelType: String
    var ratePerDay: Double
    var ratePerKm: Double
    var carColor: String
    var carType: String
    init(identificationNumber:String,description:String,isSelfDrive:Bool,
         manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double, carColor: String, carType: String)
    {
        self.identificationNumber = identificationNumber
        self.description = description
        self.isSelfDrive = isSelfDrive
        self.manufacturerName = manufacturerName
        self.isInsured = isInsured
        self.vehicleNoOfSeats = vehicleNoOfSeats
        self.insuranceProviderName = insuranceProviderName
        self.seat = seat
        self.fuelType = fuelType
        self.ratePerDay = ratePerDay
        self.ratePerKm = ratePerKm
        self.carColor = carColor
        self.carType = carType
    }
}
