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
    var fuelType: String     {get set}
    var vehicleType: VehicleT  {get set}
}
    public func display()
    {
    }



