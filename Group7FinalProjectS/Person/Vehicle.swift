//
//  Vehicle.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

class Vehicle: IDisplay
{
    var vehicleIdentificationNumber: String
    var vehicleDescription: String
    var manufacturerName: String
    var isSelfDrive: Bool
    var isInsured: Bool
    var noOfSeat: Int
    var prefixDetails: String
    var insuranceProviderName: String
    var fuelType: FuelType
    var vehicleType: VehicleType
    var baseRate: Int
    var ratePerKm: Int
    
    init(vIdentificationNumber: String, vDescription: String, mName:String, selfDrive: Bool, insured: Bool, seat: Int, fType: FuelType )
    {
        self.vehicleIdentificationNumber = vIdentificationNumber;
        self.vehicleDescription = vDescription;
        self.manufacturerName = mName;
        self.isSelfDrive = selfDrive;
        self.isInsured = insured;
        self.noOfSeat = seat;
        self.fuelType = fType;
    }
    
     func getBaseRate() -> Int
     {
        var bRate: Int
           switch (vehicleType) {
            
               case Car:
                bRate = 100
            
               
