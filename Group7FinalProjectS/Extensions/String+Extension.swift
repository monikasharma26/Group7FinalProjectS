//
//  String+Extension.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
extension String{
    
    public static func formattedDate(sDate : String) -> Date?
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd-MM-YYYY"
        let formattedDate : Date? = dateFormatterPrint.date(from: sDate)
        return formattedDate
    }
    
    func addToFile() {
           let filename = getDocumentsDirectory().appendingPathComponent("output.txt")
           do {
               try write(to: filename, atomically: true, encoding: String.Encoding.utf8)
           } catch {
               print(error.localizedDescription)
           }
       }
       
       func getDocumentsDirectory() -> URL {
           let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
           return paths[0]
       }
    
       func isValidEmail() -> Bool{
      let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
         let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
         return emailTest.evaluate(with: self)
            }

          func isValidPassword() -> Bool{
                 let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}"
                 let passwordTest = NSPredicate(format:"SELF MATCHES %@",
        passwordRegEx)
                 return passwordTest.evaluate(with: self)
             }
        public func isvalidPhoneNumber() -> Bool
           {
               var flag = false
               if self.count==10 {
                   let number = Int(self)
                   if number != nil {
                       
                       flag = true
                   }
               }
               return flag
           }
    func speed()-> String{
               return "\(self) km/hr"
    }
        
        func milage()-> String{
                   return "\(self) mpg"
        }
    }

    extension Float {
        
    func kiloMeter()-> String{
               return "\(self) Km"
    }
        
        func currency()-> String{
                           return "$ \(self)"
        }
    
        func seat()-> String{
                   return "\(self) Seats"
        }
            
           
            
    
}
