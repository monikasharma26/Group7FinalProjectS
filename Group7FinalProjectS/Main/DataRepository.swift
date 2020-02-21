//
//  DataRepository.swift
//  Group7FinalProjectS
//
//  Created by Kritima Kukreja on 2020-02-20.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class DataRepository
{
    static private var repo = DataRepository()
    
    private lazy var vehicleList = Dictionary<String, Vehicle>()
    private init() {
    
    }
    static func getInstance() -> DataRepository
    {
        return repo
    }
    
    func addVehicle(vehicle: Vehicle)
    {
        self.vehicleList.updateValue(vehicle, forKey: vehicle.vehiclein)
    }
    
    func getVehicle(vin: String) -> Vehicle?
    {
        self.vehicleList[vin]
    }
    
}
