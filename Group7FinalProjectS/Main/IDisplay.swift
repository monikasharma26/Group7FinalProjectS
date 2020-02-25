//
//  IDisplay.swift
//  Group7FinalProjectS
//
//  Created by Kritima Kukreja on 2020-02-20.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
// this is the protocol to use helper functions
@objc protocol IDisplay {
   /// method to Display details
   func display()
    
   /// method to update calculate TotalBill
   @objc optional func calculateTotal() -> Float
    
}
