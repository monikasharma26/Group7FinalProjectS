//
//  Car.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//


import Foundation
class Car : Vehicle
{
    
    
    var vehicleIdentificationNumber: String
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var isInsured: Bool
    
    var noOfSeat: Int
    
    var fuelType: String
    
    var vehicleType: VehicleT
    
    
   // var carType: CarType?
    
    var carColor: String
    
 //   var baseRate : Int
  //  var ratePerKm : Int
    var details: VehicleRentM?
   
    
   init(vehicleIdentificationNumber:String,vehicleDescription:String,manufacturerName: String,isSelfDrive:Bool,isInsured: Bool,noOfSeat:Int,seat: Int, fuelType: String,vehicleType:VehicleT, carColor: String)
    {
                self.vehicleIdentificationNumber = vehicleIdentificationNumber
                self.vehicleDescription = vehicleDescription
                self.manufacturerName = manufacturerName
                self.isSelfDrive = isSelfDrive
                self.isInsured = isInsured
                self.noOfSeat = noOfSeat
                self.fuelType = fuelType
              self.vehicleType = vehicleType
           //   self.baseRate = baseRate
            //  self.ratePerKm = ratePerKm
            self.carColor = carColor
         //   self.carType = carType
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
     //   self.baseRate = ""
       // self.ratePerKm = varDeObj.vehicleRent!.ratePerKm
        self.carColor = "Red"
       // self.details = varDeObj.vehicleRent
        guard let vechi = varDeObj.vehicleRent else {
               FinalOutput.shared.addNew(text: "Customer has no vehicle Rented.")
               return
           }
        self.details = vechi
           
       }

    func display() {
    
        var strContent = String()
        strContent = String(format: "Person has a %@", "\(self.vehicleType)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Vehicle Identification Number: %@ "," \(self.vehicleIdentificationNumber)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Vehicle Description: %@", "\(self.vehicleDescription)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Manufacturer Name: %@", "\(self.manufacturerName)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Fuel type of Car: %@", "\(self.fuelType)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - No of seats in Car: %@","\(self.noOfSeat)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Manufacturer: %@", "\(self.manufacturerName)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Car Color: %@",  "\(self.carColor)")
        FinalOutput.shared.addNew(text: strContent)
        guard let vechi = details else {
               FinalOutput.shared.addNew(text: "Customer has no vehicle Rented.")
               return
           }
        self.details = vechi
        
        let s = VehicleRent(varDeObj: details,vehicletype: self.vehicleType)
        s.display()
    
    }

    
}
