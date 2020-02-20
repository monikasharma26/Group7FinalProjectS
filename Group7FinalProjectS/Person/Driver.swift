//
//  Driver.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Driver 
{
    var id: Int
    var firstName: String
    var lastName: String
    var gender: Gender
    var birthDate: String
    var age: Int
    var mobileNumber: String
    var email: String
    var userName: String
    var password: String
    var drivingLicenseNumber : String
    var isDrivingHistoryCleared : Bool
    var salary : Int
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String, drivingLicenseNumber : String, isDrivingHistoryCleared : Bool, salary : Int)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.age = age
        self.mobileNumber = mobileNumber
        self.email = email
        self.userName = userName
        self.drivingLicenseNumber = drivingLicenseNumber
        self.isDrivingHistoryCleared = isDrivingHistoryCleared
        self.salary = salary
    }
}
