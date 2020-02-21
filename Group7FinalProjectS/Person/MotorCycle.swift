//
//  MotorCycle.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle
{
    var topSpeed: Double
    var milage: Double
    
    init(tspeed: Double, mil:Double)
    {
        self.topSpeed = tspeed
        self.milage = mil
        
    }
    
    override func display()
    {
              super.display()
        print("Top Speed: \(String(topSpeed.speed()))")
       print("Mileage: \(String(milage.milage()))")
          }
    }
    

   /* public Motorcycle(String vehicleIdentificationNumber, String vehicleDescription,
                      String manufacturerName, boolean isSelfDrive,
                      boolean isInsured, int noOfSeat,VehicleManagement.FUEL fuelType,
                      double topSpeed, double milage) {
        super(vehicleIdentificationNumber, vehicleDescription, manufacturerName,
                isSelfDrive, isInsured, noOfSeat, fuelType);
        super.vehicleType = VehicleManagement.VEHICLETYPE.MOTORCYCLE;
     
    }
*/
