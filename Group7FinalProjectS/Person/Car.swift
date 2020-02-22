//
//  Car.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Car: Vehicle
{
    var carType: CarType
    var carColor: String
    
    
    init(identificationNumber:String,description:String,isSelfDrive:Bool,
         manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double, cColor: String, cType: CarType)
    {
        self.carColor = cColor
        self.carType = cType
    }
    
    override func display() {
        
        super.display()
        print("Car Type: \(self.carType)")
        print("Car Color: \(self.carColor)")
    }
    
    
}
