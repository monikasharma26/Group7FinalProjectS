//
//  VehicleRent.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class VehicleRent
{
    var rentStartDate: Date
    var rentEndDate: Date
    var totalAmount: Float
    var rentedDays: Int
    var vehicleId: String
    var vehicleName: String
    var noOfKmDrived: Float
    var customerId: Int
    var customerName: String
    
    init(cId: Int, rStartDate: Date, rEndDate: Date, rDays: Int, vId: String, nOfKmDrived:Float )
    {
        self.customerId = cId
        self.rentStartDate = rStartDate
        self.rentEndDate = rEndDate
        self.rentedDays = rDays
        self.vehicleId = vId
        self.noOfKmDrived = nOfKmDrived
    }
    
    
}


  

   /* public VehicleRent(int customerId, LocalDate rentStartDate, LocalDate rentEndDate, VehicleManagement.VEHICLETYPE vehicleType, String vehicleId, float noOfKmDrived) {
    
        this.rentEndDate = rentEndDate;
        this.vehicleType = vehicleType;
        this.vehicleId = vehicleId;
        this.noOfKmDrived = noOfKmDrived;
        getCustomerName();
    }

    public VehicleRent(int customerId,LocalDate rentStartDate, LocalDate rentEndDate,
                       VehicleManagement.VEHICLETYPE vehicleType,String vehicleId, float noOfKmDrived,
                        Vehicle vehicle) {
        getCustomerName();
        this.rentStartDate = rentStartDate;
        this.rentEndDate = rentEndDate;
        this.vehicleId = vehicleId;
        this.vehicleType = vehicleType;
        this.noOfKmDrived = noOfKmDrived;
        this.customerId = customerId;
        this.vehicle = vehicle;
    }

    public String getVehicleName() {
        if (Vehicle.vehicleList.containsKey(vehicleId)) {
            vehicleName = Vehicle.vehicleList.get(String.valueOf(vehicleId));
        } else {
            vehicleName = Vehicle.vehicleList.get(String.valueOf(vehicleId));
        }
        return vehicleName;
    }
    public static String getCustomerName(){
        if (Customer.customerList.containsKey(String.valueOf(customerId))) {
            customerName = Customer.customerList.get(String.valueOf(customerId));
        } else {
            customerName = "Invalid Entry";
        }
        return customerName;
    }

    public Vehicle getVehicle() {
        return vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }

    public VehicleManagement.VEHICLETYPE getVehicleType() {
        return vehicleType;
    }
    public static void setVehicleType(VehicleManagement.VEHICLETYPE vehicleType) {
        vehicleType = vehicleType;
    }
    public static LocalDate getRentStartDate() {
        return rentStartDate;
    }
    public static void setRentStartDate(LocalDate rentStartDate) {
        rentStartDate = rentStartDate;
    }
    public static LocalDate getRentEndDate() {
        return rentEndDate;
    }
    public void setRentEndDate(LocalDate rentEndDate) {
        this.rentEndDate = rentEndDate;
    }
    public static long getRentedDays() {
        rentedDays = getRentStartDate().until(getRentEndDate(), ChronoUnit.DAYS);
        return rentedDays;
    }
    public static float getNoOfKmDrived() {
        return noOfKmDrived;
    }
    public void setNoOfKmDrived(float noOfKmDrived) {
        this.noOfKmDrived = noOfKmDrived;
    }
    public static float
/*    public void setTotalFare(float totalFare) {
        this.totalFare = totalFare;
    }*/
public static void TotalAmount(){

}
    public String display() {

        StringBuilder stringBuilder = new StringBuilder();
        return String.valueOf(stringBuilder);
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Rent Start Date: ").append(getRentStartDate()).append("\n")
                .append("Rent End Date: ").append(getRentEndDate()).append("\n")
                .append("Customer Name: ").append(getCustomerName()).append("\n")
             //   .append("-Vehicle Name: ").append(getVehicleName()).append("\n")
                .append("Vehicle Type: ").append(getVehicleType()).append("\n")
                .append("No. of Km. drived: ").append(getNoOfKmDrived() + "km").append("\n")
                .append("Total bill to pay: $" ).append(getTotalFare());
        return String.valueOf(stringBuilder);
    }


}
*/
