//
//  Owner.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Owner
{

    var companyTitle : String
    var businessLandLineNumber : String
    var website : String
    var vehicleListOwned = [String : Vehicle]()
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String, cTitle : String, bLandLineNumber : String, web : String) {
        self.companyTitle = cTitle
        self.businessLandLineNumber = bLandLineNumber
        self.website = web
    }
    
    override func display()
    {
        
             super.display();
             print("Company Title: \(self.companyTitle)")
             print("Business Landline Number: \(self.businessLandLineNumber)")
             print("Website: \(self.website)")
      }
}
