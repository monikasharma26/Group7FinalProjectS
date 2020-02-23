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


    protocol Person : IDisplay{
            var id : Int{get set}
            var firstName: String {get set}
            var lastName:  String{get set}
            var fullName: String{ get }
            var gender :  String { get set }
            var birthDate : Int? { get set }
            var age : Int { get }
            var mobileNumber : String { get set }
            var emailId : String { get set }
            var userName : String { get set }
            var password : String { get set }
            var address : String{get set}
            var city : String{get set}
            var vehicleDictionary : Dictionary<Int, Vehicle>? {get set}
        }
                
