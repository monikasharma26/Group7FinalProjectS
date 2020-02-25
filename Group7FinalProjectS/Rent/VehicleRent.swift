//
//  VehicleRent.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
enum vehicleType1{
    case Car
    case MotorCycle
    case Bus
}
class VehicleRent : IDisplay
{
        var vehicleRentID : Int?
        var rentStartDate : String
        var rentEndDate : String
       var rentInNumberOfDays : Float = 0.0
        var vehicles = [String: Vehicle]()
        var vehicleTy : VehicleT?
        var rentedDays : Int = 0
        var kmdrive : Int = 0
        var rentInKm : Float = 0.0
        let sDate:String = "12/01/2020"
    let eDate: String = "18/01/2020"
        var vehicleListRented = [Int : VehicleRent]()
        var amountToPayForAllRentedVehicles : Float = 0.0
        public var totalBillToPay : Float
        {
                return TotalFare()
        }
       public  var totalAmount: Float = 0.0
        public  var total: Float = 0.0
        var totalFare: Float = 0.0
        
    
    init(vehicleRentID : Int, rentStartDate : String, rentEndDate : String, kmdrive : Int,vehicleTy : VehicleT)
        {
            self.vehicleRentID = vehicleRentID
            self.rentStartDate = rentStartDate
            self.rentEndDate = rentEndDate
            self.kmdrive = kmdrive
            self.vehicleTy = vehicleTy
          
        }
    
    init(varDeObj :VehicleRentM?,vehicletype :VehicleT )
    {
    self.rentStartDate = (varDeObj?.StartDate)!
    self.rentEndDate = (varDeObj?.EndDate)!
    self.kmdrive = (varDeObj?.Kmdrive)!
    self.vehicleTy = vehicletype
    totalDays()
    self.totalFare = TotalFare()
        
    }
    
    
                func addVehicleRent(vehicleRent: VehicleRent, vehicleRentID: Int){
                    vehicleListRented.updateValue(vehicleRent, forKey: vehicleRentID)
                }
                
                func removeVehicleRent(vehicleRentID: Int){
                    vehicleListRented.removeValue(forKey: vehicleRentID)
                }
    
                   public func totalDays() {
                    //let current = Calendar.current
                    var start: Int = 0
                    var end : Int = 0
                    start = Int(self.rentStartDate)!
                    end = Int(self.rentEndDate)!
                    let numberOfDays = end - start
                    self.rentedDays = numberOfDays
                    }
                
       public func TotalFare() -> Float
        {
            
            switch vehicleTy
            {
            case .car:
                self.totalFare = Float((100 * rentedDays) + (self.kmdrive * 5))
                self.totalAmount = totalFare
                return totalAmount
                
            case .motorcycle:
                totalFare = Float((50 * rentedDays) + (self.kmdrive * 1))
                totalAmount=totalFare
                return totalAmount
            case .bus:
                totalFare = Float((250 * rentedDays) + (self.kmdrive * 7))
                totalAmount=totalFare
                return totalAmount
            default:
                totalFare = 0;
                return totalFare
            }
        }
       func addVehicle(vehicle: Vehicle, identificationNumber: String)
       {
          vehicles.updateValue(vehicle, forKey: identificationNumber)
       }
       
       func removeVehicle(identificationNumber: String)
       {
           vehicles.removeValue(forKey: identificationNumber)
       }
    public func calculateTotal() -> Float
    {
        return total + self.totalAmount
    }
    public func display()
    {
        var strContent = String()
        strContent = String(format: "   - Start Date: %@",  "\(self.sDate)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - End Date: %@",  "\(self.eDate)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - KM Drivern : %@",  "\(self.kmdrive)")
        FinalOutput.shared.addNew(text: strContent)
        strContent = String(format: "   - Total Amount : %@","\(totalAmount.currency())")
        FinalOutput.shared.addNew(text: strContent)
        let startEnd = "***************************************"
        FinalOutput.shared.addNew(text: startEnd)
        let toatlS = "TOTAL Amount: \(calculateTotal().currency())"
        FinalOutput.shared.addNew(text: toatlS)
        FinalOutput.shared.addNew(text: startEnd)
        FinalOutput.shared.writeToFile()
    }
    
}








