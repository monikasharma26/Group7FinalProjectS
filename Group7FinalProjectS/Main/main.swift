//
//  main.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

// MARK:- Fetch base employee from json file
func fetchBaseModel() {
    let employees = DataSource.readJsonFileWith(name: "PersonData")//(name: "PersonData") //(name: "PersonData")//(name: "PersonData")
    getCustomerType(employees: employees)
}
// MARK:- Create objects of particular type
func getCustomerType(employees: [PersonM]) {
    var employeeArr = [Person]()
    for employee in employees {
        if let type = employee.type{
            switch type {
            case .Customer:
                do {
                    let emObj =  try Customer(id: employee.id, firstName: employee.firstName, lastName: employee.lastName, gender: employee.gender, birthDate: employee.birthDate, mobileNumber: employee.mobileNumber, emailId: employee.emailID, userName: employee.userName, password: employee.password, address: employee.address, city: employee.city, vehicle: employee.vehicle)
                                   employeeArr.append(emObj)
                } catch CustomerError.emailInvalid {
                    FinalOutput.shared.addNew(text: Errors.InavalidEmail)
                }catch CustomerError.mobileInvalid {
                    FinalOutput.shared.addNew(text: Errors.InvalidMobileNumber)
                }catch {
                print(error.localizedDescription)
                }
                
                case .Owner:
                    do {
                let owObj = try Owner(id: employee.id, firstName: employee.firstName, lastName: employee.lastName, gender: employee.gender, birthDate: employee.birthDate, mobileNumber: employee.mobileNumber, emailId: employee.emailID, userName: employee.userName, password: employee.password, address: employee.address, city: employee.city, vehicle: employee.vehicle!)
                 employeeArr.append(owObj)
                }catch CustomerError.emailInvalid {
                    FinalOutput.shared.addNew(text: Errors.InavalidEmail)
                }catch CustomerError.mobileInvalid {
                    FinalOutput.shared.addNew(text: Errors.InvalidMobileNumber)
                }catch {
                print(error.localizedDescription)
                }
            
            case .Driver:
            print("test")
            }
        }
    }
    // sorting via age....
    employeeArr = employeeArr.sorted(by: { (emp1, emp2) -> Bool in
       return emp1.age > emp2.age
    })
    // call function...
    printDetails(employees: employeeArr)
}

// MARK:- Print all details of Person
func printDetails(employees: [Person]) {
    var total: Float = 0
    for employee in employees {
        employee.display()
        total += (employee.calculateTotal)()
    }
}
// MARK:- Fetch data from source
fetchBaseModel()

func logToFile() {
    let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
  let documentsDirectory = paths[0]
  let fileName = "Output.txt"
  let logFilePath = (documentsDirectory as NSString).appendingPathComponent(fileName)

  freopen(logFilePath.cString(using: String.Encoding.ascii)!, "a+", stderr)
  freopen(logFilePath.cString(using: String.Encoding.ascii)!, "a+", stdin)
  freopen(logFilePath.cString(using: String.Encoding.ascii)!, "a+", stdout)
}
logToFile()
