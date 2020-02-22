//
//  Model.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-22.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
public class Model
{
   // MARK: - Welcome
      struct Welcome: Codable {
          let jsondata: [Jsondatum]
      }
    // MARK: - Jsondatum
    struct Jsondatum: Codable {
        let jsondatumClass: String
        let id: Int
        let name: String
        let age: Int
        let vehicle: Vehicle?
        let schoolName: String?
        let type: String
        let salary, bonus, rate, hoursWorked: Int?
        let fixedAmount, commissionPercent: Int?
        
        enum CodingKeys: String, CodingKey {
            case jsondatumClass = "@class"
            case id, name, age, vehicle, schoolName, type, salary, bonus, rate, hoursWorked, fixedAmount, commissionPercent
        }
    }
      
    
}

