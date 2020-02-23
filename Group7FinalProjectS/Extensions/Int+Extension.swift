//
//  Int+Extension.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

extension Int {
    
            public func carBaseRate() -> String
            {
            return "\(self)100"
            }
            public func motorCycleBaseRate() -> String
            {
                return "\(self)50"
            }
            public func busBaseRate() -> String
            {
                return "\(self)250"
            }
            public func carRatePerKm() -> String
            {
                return "\(self)100"
            }
            public func motorCycleRatePerKm() -> String
            {
                return "\(self)50"
            }
            public func busRateKm() -> String
            {
                return "\(self)250"
            }
            public func formatUnits() -> String
            {
             // return String(format : "sel units", self)
                return "\(self) Units"
            }
            public func internetUnit() -> String
            {
            //  return String(format : "%0.0f GB", self)
               return "\(self) GB"
            }
}
