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
    var id: Int
    var firstName: String
    var lastName: String
    var fullName: String {
                get
               {
               return "\(firstName) \(lastName)"
               }
    }
    var gender: String
    var birthDate: Int?
    var age: Int
    {
        get
        {
            return Date.dateDifference(birthYear: self.birthDate!)
        }
    }
    
    var mobileNumber: String
    var emailId: String
    var userName: String
    var password: String
    var address: String
    var city: String
   // var type : personType.Customer
    var vehicleDictionary: Dictionary<Int, Vehicle>?
    var vehicleObj : Model.Vehicle
    init(id: Int, firstName: String, lastName: String, gender: String, birthDate: Int, mobileNumber: String, emailId: String, userName: String, password: String, address : String, city : String,vehicleObj : Model.Vehicle) {
        self.id = id
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
        self.vehicleObj = vehicleObj
    }
    
    
   
    public func display()
    {
            print("*******************************************************")
            print("Customer's ID : \(id)")
            print("Customer's Full Name : \(fullName)")
            print("Emoployee is a  : Customer")
             print("Customer's Age  : \(age)")
              print("Customer's gender: \(gender)")
              print("Customer's Mobile Number: \(mobileNumber)")
              print("Customer's email : \(emailId)")
              print("Customer's username : \(userName)")
              print("Customer's password : \(password)")
              print("Customer's Address : \(address)")
              print("Customer's City \(city)")
                print("Customer has a  : \(vehicleObj.vehicleType)")
                print("  -   Vehicle Identification Number : \(vehicleObj.vehicleIdentificationNumber)")
                print("  -   Vehicle Description : \(vehicleObj.vehicleDescription)")
                print("  -   Manufacturer Name : \(vehicleObj.manufacturerName)")
                print("  -   Self Drive : \(vehicleObj.isSelfDrive)")
                print("  -   Insurance : \(vehicleObj.isInsured)")
                print("  -   Vehicle Description : \(vehicleObj.vehicleDescription)")
                print("  -   Manufacturer Name : \(vehicleObj.manufacturerName)")
                print("  -   Self Drive : \(vehicleObj.isSelfDrive)")
                print("  -   Insurance : \(vehicleObj.isInsured)")
                print("  -   No of Seats: \(vehicleObj.noOfSeat)")
                print("  -   Fuel Type:: \(vehicleObj.fuelType)")
                print("  -   Max Top Speed: \(vehicleObj.topSpeed)")
                print("  -   Milage : \(vehicleObj.mileage)")
    }
    
}
