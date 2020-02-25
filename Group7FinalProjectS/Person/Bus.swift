//
//  Bus.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Bus : Vehicle
{
    
    
    var vehicleIdentificationNumber: String
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var isInsured: Bool
    
    var noOfSeat: Int
    
    var fuelType: String
    
    var vehicleType: VehicleT
    var details: VehicleRentM?
   var busType: String?
    var isWifiAvailable: Bool
    var isAccessibiltyServiceAvailable: Bool
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName:String, isSelfDrive: Bool, isInsured: Bool, noOfSeat: Int, fuelType: String, vehicleType: VehicleT,
         isWifiAvailable: Bool, isAccessibiltyServiceAvailable: Bool ){
        
          self.vehicleIdentificationNumber = vehicleIdentificationNumber
          self.vehicleDescription = vehicleDescription
          self.manufacturerName = manufacturerName
          self.isSelfDrive = isSelfDrive
          self.isInsured = isInsured
          self.noOfSeat = noOfSeat
          self.fuelType = fuelType
        self.vehicleType = vehicleType
        self.isWifiAvailable = isWifiAvailable
        self.isAccessibiltyServiceAvailable = isAccessibiltyServiceAvailable
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
                self.isAccessibiltyServiceAvailable = false
                self.isWifiAvailable = false
              guard let vechi = varDeObj.vehicleRent else {
                  FinalOutput.shared.addNew(text: "")
                  return
                    }
              self.details = vechi
              
              }
   func display()
   {
    var strContent = String()
    strContent = String(format: "Owner has a %@", "\(self.vehicleType)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - Vehicle Identification Number: %@"," \(self.vehicleIdentificationNumber)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - Vehicle Description: %@", "\(self.vehicleDescription)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - Manufacturer Name: %@","\(self.manufacturerName)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - Fule type of MotorCycle: %@", "\(self.fuelType)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - No of seats in Bus: %@","\(self.noOfSeat)")
    FinalOutput.shared.addNew(text: strContent)
    strContent = String(format: "   - Manufacturer: %@", "\(self.manufacturerName)")
    guard let tes = details else {
        FinalOutput.shared.addNew(text: "")
        return
    }
    }
    
}
