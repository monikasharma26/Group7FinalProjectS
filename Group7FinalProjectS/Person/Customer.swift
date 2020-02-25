//
//  Customer.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//
public enum personType : String{
    case Customer
    case Owner
    case Driver
}
import Foundation
class Customer: Person {
            var address : String?
               var city : String?
               var vehicle: VehicleM?
                var vehicleListRented = [Int : VehicleRent]()
                var amountToPayForAllRentedVehicles : Float = 0.0
    
    init(id: String, firstName: String, lastName: String, gender: String, birthDate: Int, mobileNumber: String, emailId: String, userName: String, password: String, address : String?, city: String?, vehicle : VehicleM?) throws {
        
        guard (emailId.isValidEmail()) else {
            throw CustomerError.emailInvalid
        }
        
        guard( mobileNumber.isvalidPhoneNumber() ) else {
                throw CustomerError.mobileInvalid
            }
       try super.init (id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, mobileNumber: mobileNumber, emailId: emailId, userName: userName, password: password)
        
        self.address = address
        self.city = city
        self.vehicle = vehicle
           
       }
    override func display() {
        //
        super.display()
        //
        let cust = "Person is Customer"
        FinalOutput.shared.addNew(text: cust)
       
        let strGender =      "   - Gender: \(gender)"
        FinalOutput.shared.addNew(text: strGender)
        let strMobileNumber = "   - Mobile Number:  \(mobileNumber)"
        FinalOutput.shared.addNew(text: strMobileNumber)
            let strEmailId = "   - Email Id: \(emailId)"
        FinalOutput.shared.addNew(text: strEmailId)
            let strPassword = "  -  Password: \(password)"
        FinalOutput.shared.addNew(text: strPassword)
                let strName = "  -  Addrerss: \(self.address!)"
        FinalOutput.shared.addNew(text: strName)
                let strCity = "  -  City: \(self.city!)"
        FinalOutput.shared.addNew(text: strCity)
        
        //
        super.initiateVehileClass(vechileM : vehicle)
    }
 
}



            

