//
//  Driver.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Driver : Person
{

   var drivingLicenseNumber : String?
    var isDrivingHistoryCleared : Bool?
    var salary : Float?
    
    init(id: String, firstName: String, lastName: String, gender: String, birthDate: Int, age: Int, mobileNumber: String, emailId: String, userName: String, password: String, dLicenseNumber : String?, drivingHistoryCleared : Bool?, sal : Float?) throws
    {
        
        guard(emailId.isValidEmail()) else {
           throw CustomerError.emailInvalid
       }
       guard( mobileNumber.isvalidPhoneNumber() ) else {
               throw CustomerError.mobileInvalid
           }
        try super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, mobileNumber: mobileNumber, emailId: emailId, userName: userName, password: password)
        
        self.drivingLicenseNumber = dLicenseNumber
        self.isDrivingHistoryCleared = drivingHistoryCleared
        self.salary = sal
    }
    
    override func display()
    {
           super.display();
        print("Licence Number: \(String(describing: self.drivingLicenseNumber))")
        print("Driving History: \(String(describing: self.isDrivingHistoryCleared))")
          
    }
}
