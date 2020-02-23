//
//  main.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

public class JsonParsing {
 func dataparsing() {
        
        let url = Bundle.main.url(forResource: "jsonResponse", withExtension: "json")!
       do {
                  guard let jsonData = try? Data(contentsOf: url) else {
                      return
                  }
                   // let json = try? JSONSerialization.jsonObject(with: jsonData, options: [])
                    guard (try? JSONSerialization.jsonObject(with: jsonData, options: [])) != nil else {
                                        return
                                    }
            do {
    
                //here dataResponse received from a network request
               let decoder = JSONDecoder()
                //Decode JSON Response Data
                let model = try decoder.decode(Model.Welcome.self, from: jsonData)
                //iterating through the data
               for i in 0..<model.jsondata.count{
                   // print(model?.jsondata.count)
                if(personType.Customer.rawValue  == model.jsondata[i].type)
                   {
                    let customerObj = Customer(id: model.jsondata[i].id, firstName: model.jsondata[i].firstName, lastName: model.jsondata[i].lastName, gender:model.jsondata[i].gender, birthDate: model.jsondata[i].birthDate!, mobileNumber: model.jsondata[i].mobileNumber, emailId: model.jsondata[i].emailID, userName: model.jsondata[i].userName, password: model.jsondata[i].password, address: model.jsondata[i].address, city: model.jsondata[i].city,vobj: model.jsondata[i].vehicle! )
                      customerObj.display()
                    }
                }
                
              
            } catch let parsingError {
                print("Error", parsingError)
        }
        
        }
    }
    
}

var obj = JsonParsing()
obj.dataparsing()

