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
    var baseRate: Int { get
    {
        return getBaseRate()
        }
    }
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
            
        case .Car:
            bRate = 100
            
        case .Motorcycle:
            bRate = 50
            
        case .Bus:
            bRate = 250
        default:
            bRate = 0;
        }
        return bRate;
    }

    func display()
    {
        print("Vehicle Identification Number: \(self.vehicleIdentificationNumber)")
        print("Vehicle Description: \(self.vehicleDescription)")
        print("Manufacturer Name: \(self.manufacturerName)")
        print("Self Drive: \(self.isSelfDrive)")
        print("Driver: \(self.manufacturerName)")
        print("Insurance: \(self.isInsured)")
        print("Insurance Provider Name: \(self.insuranceProviderName)")
        print("No of Seats: \(String(self.noOfSeat.seat()))")
        print("Fuel Type: \(self.fuelType)")
        print("Insurance Provider Name: \(self.insuranceProviderName)")
        print("Base Rate: \(String(self.baseRate.currency()))")
          print("Rate per km: \(String(self.ratePerKm.currency()))")
            }
    }


