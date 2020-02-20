//
//  main.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

func readJsonFile(jsonFileName: String)
{
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else{
        print("Invalid File Path Found")
        return
    }
    
    guard let data = try? Data(contentsOf: jsonData) else {
        print("Error while reading data from URL")
        return
}

    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else{
        print("Error while reading JSON Data from file")
    return
    }

 print(json)

/*if let userDictionary = json as? [String: Any]
{
    let id = userDictionary["id"] ?? "No ID Found"
    print(id)
    if let addressDictionary = userDictionary["address"] as? [String: Any]
    {
        print(addressDictionary["city"]!)
    
    }
}*/
}
readJsonFile(jsonFileName: "Customer")



