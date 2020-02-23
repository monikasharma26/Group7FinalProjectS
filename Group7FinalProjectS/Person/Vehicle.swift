//
//  Vehicle.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

protocol Vehicle : IDisplay
{
    var vehicleIdentificationNumber: String {get set}
    var vehicleDescription: String {get set}
    var manufacturerName: String    {get set}
    var isSelfDrive: Bool            {get set}
    var isInsured: Bool               {get set}
    var noOfSeat: Int                   {get set}
   // var prefixDetails: String           {get set}
    var fuelType: VehicleType.FuelType              {get set}
    var vehicleType: VehicleType.vehicleTyp  {get set}
    var baseRate: Int { get }
    var ratePerKm: Int { get }
}




