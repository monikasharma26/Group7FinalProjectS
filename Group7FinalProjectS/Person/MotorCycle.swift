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

class MotorCycle : Vehicle
{
    var vehicleIdentificationNumber: String
    var vehicleDescription: String
    var manufacturerName: String
    var isSelfDrive: Bool
    var isInsured: Bool
    var noOfSeat: Int
    //var prefixDetails: String
    var fuelType: String
    var vehicleType: VehicleT
   // var baseRate: Int
    //var ratePerKm: Int
    var topSpeed: Int
    var details: VehicleRentM?
    var milage: Int
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName:String, isSelfDrive: Bool, isInsured: Bool, noOfSeat: Int, fuelType: String, vehicleType: VehicleT,
         topSpeed:Int, milage: Int )
      {
          self.vehicleIdentificationNumber = vehicleIdentificationNumber
          self.vehicleDescription = vehicleDescription
          self.manufacturerName = manufacturerName
          self.isSelfDrive = isSelfDrive
          self.isInsured = isInsured
          self.noOfSeat = noOfSeat
          self.fuelType = fuelType
        self.vehicleType = vehicleType
      //  self.baseRate = baseRate
       // self.ratePerKm = ratePerKm
        self.topSpeed = topSpeed
        self.milage = milage
      }
    
    init(varDeObj: VehicleM)
          {
            self.vehicleIdentificationNumber = varDeObj.vehicleIdentificationNumber
            self.vehicleDescription = varDeObj.vehicleDescription
            self.manufacturerName = varDeObj.manufacturerName
            self.isSelfDrive = varDeObj.isSelfDrive
            self.isInsured = varDeObj.isInsured
            self.noOfSeat = varDeObj.noOfSeat
            self.fuelType = varDeObj.fuelType
            self.vehicleType = varDeObj.vehicleType!
         //self.baseRate =
         // self.ratePerKm = varDeObj.vehicleRent!.ratePerKm
            self.topSpeed = varDeObj.topSpeed
            self.topSpeed = 70
            self.milage = varDeObj.mileage
            self.milage = 42
            
            guard let vechi = varDeObj.vehicleRent else {
                FinalOutput.shared.addNew(text: "")
                return
            }
            self.details = vechi
            
            }
       func display()
       {
        var strContent = String()
        strContent = String(format: "Person has a %@", "\(self.vehicleType)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Vehicle Identification Number: %@"," \(self.vehicleIdentificationNumber)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Vehicle Description: %@", "\(self.vehicleDescription)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Manufacturer Name: %@","\(self.manufacturerName)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Fule type of MotorCycle: %@", "\(self.fuelType)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - No of seats in MotorCycle: %@","\(self.noOfSeat)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Manufacturer: %@", "\(self.manufacturerName)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Top Speed: %@",  "\(self.topSpeed)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Milage: %@",  "\(self.milage)")
        FinalOutput.shared.addNew(text: strContent)
        guard let tes = details else {
            FinalOutput.shared.addNew(text: "")
            return
        }
        }
    
      
}
  
