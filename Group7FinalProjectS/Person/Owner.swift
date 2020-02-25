//
//  Owner.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

class Owner : Person
{
  var companyTitle : String = "LTE"

  var webSite : String  = "www.lte.com"

    var vehicle : VehicleM?
    
    init(id: String, firstName: String, lastName: String, gender: String, birthDate: Int, mobileNumber: String, emailId: String, userName: String, password: String, address : String, city : String, vehicle : VehicleM?) throws {
        
       guard (emailId.isValidEmail()) else {
           throw CustomerError.emailInvalid
       }
       guard( mobileNumber.isvalidPhoneNumber()) else {
               throw CustomerError.mobileInvalid
           }
         try super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, mobileNumber: mobileNumber, emailId: emailId, userName: userName, password: password)
        
        self.vehicle = vehicle
        
    }
    override func display() {
        //
        super.display()
        //
        let cust = "Person is a Owner"
        FinalOutput.shared.addNew(text: cust)
        let website = "    - Website: \(self.webSite)"
        FinalOutput.shared.addNew(text: website)
        let company = "    - Company Title: \(self.companyTitle)"
        FinalOutput.shared.addNew(text: company)
        //
        super.initiateVehileClass(vechileM: vehicle!)
    }
   
    
}
