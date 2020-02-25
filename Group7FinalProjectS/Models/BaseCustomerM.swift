//
//  BaseEmployeeM.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

struct BaseCustomerM: Codable {
    
    var per : [PersonM]?
    enum CodingKeys: String, CodingKey {
    case per = "PersonM"
}
}
