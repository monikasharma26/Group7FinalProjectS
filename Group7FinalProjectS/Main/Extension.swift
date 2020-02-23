//
//  Extension.swift
//  Group7FinalProjectS
//
//  Created by Kritima Kukreja on 2020-02-20.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

extension String {
    
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
}

extension Double {
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
}

extension Int {
    
func seat()-> String{
           return "\(self) Seats"
}
    
    func currency()-> String{
                          return "$ \(self)"
       }
}
