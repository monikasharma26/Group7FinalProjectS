//
//  DataSource.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
// This is the class to fetch data from json file
class DataSource {
    
    // MARK:- Life Cycle
    //
    private init(){ }
    
    // MARK:- Functions
    /// parsing method
    
    
    static func readJsonFileWith(name file: String) -> [PersonM] {
        let url = Bundle.main.url(forResource: file, withExtension: "json")
        guard let jsonData = url else{ return [] }
        guard let dataParse = try? Data(contentsOf: jsonData) else { return [] }
        
        do {
            // check if json data can be converted to foundation object.
            let json = try JSONSerialization.jsonObject(with: dataParse, options: .allowFragments)
            var dataDict = NSDictionary()
            dataDict = json as! NSDictionary
            let jsonSer = try! JSONSerialization.data(withJSONObject: dataDict["PersonData"] as! NSArray)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .secondsSince1970
            
            let employee = try decoder.decode([PersonM].self, from: jsonSer)
           // debugPrint(employee)
            return employee
        } catch let err {
            debugPrint(err)
            return []
        }
    }
}
