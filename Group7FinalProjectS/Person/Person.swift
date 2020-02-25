//
//  Person.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//
enum Gender : String
{
   case Male
   case Female
   case Other
}
import Foundation
class Person {
            var id : String
            var firstName: String
            var lastName:  String
            var fullName: String {  get
                            {
                            return "\(firstName) \(lastName)"
                            }
            }
            var gender :  String 
            var birthDate : Int?
            var age: Int
               {
                   get
                   {
                       return Date.dateDifference(birthYear: self.birthDate!)
                   }
               }
            var mobileNumber : String
            var emailId : String
            var userName : String
            var password : String
            var vehicleDictionary : Dictionary<Int, Vehicle>?
     init(id: String, firstName: String, lastName: String, gender: String, birthDate: Int, mobileNumber: String, emailId: String, userName: String, password: String) throws
     {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
       guard( mobileNumber.isvalidPhoneNumber() ) else {
            throw CustomerError.mobileInvalid
        }
        self.mobileNumber = mobileNumber
        if emailId.isValidEmail() {
                          self.emailId = emailId
                      }
                       else
                        { throw CustomerError.emailInvalid   }
        
        self.userName = userName
        self.password = password
        
    }
            
}
extension Person: IDisplay  {

// MARK: - Protocol functions
    @objc func display() {
        
    let start = "\n******************************"
    FinalOutput.shared.addNew(text: start)
    let strName = "Name: \(fullName)"
    FinalOutput.shared.addNew(text: strName)
    let strAge = "Age: \(age)"
         FinalOutput.shared.addNew(text: strAge)
}

@objc func calculateTotal() -> Float {
    return 0.0
}

func initiateVehileClass(vechileM: VehicleM?) {
    var car: Car?

    var motorCycle: MotorCycle?
   var bus : Bus?
    
    guard let vechicle = vechileM else {
        FinalOutput.shared.addNew(text: "Customer has no vehicle.\n")
        return
    }
    switch vechicle.vehicleType {
    case .car:
        do {
                car = Car(varDeObj: vechicle)
                car?.display()
                
        }
        
    case .motorcycle:
        do {
            motorCycle = MotorCycle(varDeObj: vechicle)
            motorCycle!.display()
        }
    case .bus:
        do {
            bus = Bus(varDeObj: vechicle)
            bus!.display()
        }
    case .none:
        print("")
    }

    }

    
}
