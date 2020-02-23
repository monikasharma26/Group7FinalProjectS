//
//  MotorCycle.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//
enum vehicleType{
       case Car
       case MotorCycle
       case Bus
   }
import Foundation

class Motorcycle : Vehicle
{    
    var vehicleIdentificationNumber: String
    var vehicleDescription: String
    var manufacturerName: String
    var isSelfDrive: Bool
    var isInsured: Bool
    var noOfSeat: Int
    //var prefixDetails: String
    var fuelType: VehicleType.FuelType
    var vehicleType: VehicleType.vehicleTyp
    var baseRate: Int
    var ratePerKm: Int
    var maxTopSpeed: Float
    var milage: Float
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName:String, isSelfDrive: Bool, isInsured: Bool, noOfSeat: Int, fuelType: VehicleType.FuelType, vehicleType: VehicleType.vehicleTyp ,baseRate: Int,   ratePerKm: Int,
         maxTopSpeed:Float, milage: Float )
      {
          self.vehicleIdentificationNumber = vehicleIdentificationNumber
          self.vehicleDescription = vehicleDescription
          self.manufacturerName = manufacturerName
          self.isSelfDrive = isSelfDrive
          self.isInsured = isInsured
          self.noOfSeat = noOfSeat
          self.fuelType = fuelType
        self.vehicleType = vehicleType
        self.baseRate = baseRate
        self.ratePerKm = ratePerKm
        self.maxTopSpeed = maxTopSpeed
        self.milage = milage
      }
       func display()
       {
           print("Vehicle Identification Number: \(self.vehicleIdentificationNumber)")
           print("Vehicle Description: \(self.vehicleDescription)")
           print("Manufacturer Name: \(self.manufacturerName)")
           print("Self Drive: \(self.isSelfDrive)")
           print("Insurance: \(self.isInsured)")
          //  print("Driver: \(self.manufacturerName)")
            // print("Insurance Provider Name: \(self.insuranceProviderName)")
           print("No of Seats: \(String(self.noOfSeat.seat()))")
           print("Fuel Type: \(self.fuelType)")
        //   print("Insurance Provider Name: \(self.insuranceProviderName)")
           print("Max Top Speed: \(maxTopSpeed)")
             print("Milage : \(milage)")
        }
    
      
}
    /*var topSpeed: Double
    var milage: Double
    
    init(tspeed: Double, mil:Double)
    {
        self.topSpeed = tspeed
        self.milage = mil
        
    }
    
    override func display()
    {
              super.display()
        print("Top Speed: \(String(self.topSpeed.speed()))")
        print("Mileage: \(String(self.milage.milage()))")
          }
    }
    

   /* public Motorcycle(String vehicleIdentificationNumber, String vehicleDescription,
                      String manufacturerName, boolean isSelfDrive,
                      boolean isInsured, int noOfSeat,VehicleManagement.FUEL fuelType,
                      double topSpeed, double milage) {
        super(vehicleIdentificationNumber, vehicleDescription, manufacturerName,
                isSelfDrive, isInsured, noOfSeat, fuelType);
        super.vehicleType = VehicleManagement.VEHICLETYPE.MOTORCYCLE;
     
    }*/
 }*/
