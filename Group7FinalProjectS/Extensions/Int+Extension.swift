//
//  Int+Extension.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

extension Int {
    
            public func carBaseRate() -> Int
            {
            return 100
            }
            public func motorCycleBaseRate() -> Int
            {
                return 50
            }
            public func busBaseRate() -> String
            {
                return "\(self)250"
            }
            public func carRatePerKm() -> String
            {
                return "\(self)100"
            }
            public func motorCycleRatePerKm() -> Int
            {
                return 50
            }
            public func busRateKm() -> String
            {
                return "\(self)250"
            }
}
