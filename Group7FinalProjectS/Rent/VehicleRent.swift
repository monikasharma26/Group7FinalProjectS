//
//  VehicleRent.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

class VehicleRent: IDisplay
{
    var rentStartDate: Date
    var rentEndDate: Date
    var totalAmount: Float
    var rentedDays: Int
    var vehicleId: String
    var vehicleName: String
    var vehicleType: VehicleType
    var noOfKmDrived: Float
    var totalFare: Float
    var customerId: Int
    var customerName: String
    
    init(cId: Int, rStartDate: Date, rEndDate: Date, vType: VehicleType, vId: String, nOfKmDrived:Float )
    {
        self.customerId = cId
        self.rentStartDate = rStartDate
        self.rentEndDate = rEndDate
        self.vehicleType = vType
        self.vehicleId = vId
        self.noOfKmDrived = nOfKmDrived
    }
    
    func TotalFare()
    {
        switch vehicleType
        {
        case Car:
            totalFare = Float(100 * rentedDays) + (noOfKmDrived * 5)
            totalAmount=totalFare
            
        case Motorcycle:
            totalFare = Float(50 * rentedDays) + (noOfKmDrived * 1)
            totalAmount=totalFare
            
        case Bus:
            totalFare = Float(250 * rentedDays) + (noOfKmDrived * 7)
            totalAmount=totalFare
        default:
            totalFare = 0;
        }
    }
    
    
}








