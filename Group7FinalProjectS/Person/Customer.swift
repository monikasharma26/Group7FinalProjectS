//
//  Customer.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Customer : Person
{
    var customerId: Int
    var firstName: String
    var lastName: String
    var fullName: String {
                get
               {
               return "\(firstName) \(lastName)"
               }
    }
    var gender: Gender
    var birthDate: Date?
    var age: Int
    {
        get
        {
            return 0
        }
    }
    
    var mobileNumber: String
    var emailId: String
    var userName: String
    var password: String
    var address: String
    var city: String
    var vehicleDictionary: Dictionary<Int, Vehicle>?
    
    init(customerId: Int, firstName: String, lastName: String, gender: Gender, birthDate: Date, mobileNumber: String, emailId: String, userName: String, password: String, address : String, city : String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.mobileNumber = mobileNumber
        self.emailId = emailId
        self.userName = userName
        self.password = password
        self.address = address
        self.city = city
    }
    
    
   
    func display()
    {
            print("*******************************************************")
            print("Customer's ID \(customerId)")
              print("Customer's Full Name \(fullName)")
              print("Customer's gender \(gender)")
              print("Customer's Mobile Number \(mobileNumber)")
              print("Customer's email \(emailId)")
              print("Customer's username \(userName)")
              print("Customer's password \(password)")
              print("Customer's Address \(address)")
              print("Customer's City \(city)")
              //print("Customer's Vehicle list rented \(vehicleListRented)")
        
    }
    
    
    
}
