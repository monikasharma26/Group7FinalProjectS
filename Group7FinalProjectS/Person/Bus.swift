//
//  Bus.swift
//  Group7FinalProjectS
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Bus: Vehicle
{
    var busType: String
    var isWifiAvailable: Bool
    var isAccessibiltyServiceAvailable: Bool
    
    init(vIidentificationNumber: String, vdescription: String, isSelfDrive: Bool, manufacturerName: String, isInsured: Bool, vehicleNoOfSeats: Int, insuranceProviderName: String, seat: Int, fuelType: String, rPerDay: Double, ratePerKm: Double, busType : String , wifiAvailable : Bool, accessibiltyServiceAvailable: Bool)
       {
           
           
       }
    
    
    
    
}


    VehicleManagement.BusType typeOfBus;
    boolean isAccessibilityServiceAvailable;
    boolean isWifiAvailable;

    public Bus(String vehicleIdentificationNumber, String vehicleDescription,
               String manufacturerName, boolean isSelfDrive,
               boolean isInsured,
               int noOfSeat, VehicleManagement.FUEL fuelType,
               VehicleManagement.BusType typeOfBus, boolean isAccessibilityServiceAvailable,
               boolean isWifiAvailable) {
        super(vehicleIdentificationNumber, vehicleDescription,
                manufacturerName, isSelfDrive,
                isInsured,
                noOfSeat, fuelType);
        super.vehicleType = VehicleManagement.VEHICLETYPE.BUS;
        this.typeOfBus = typeOfBus;
        this.isAccessibilityServiceAvailable = isAccessibilityServiceAvailable;
        this.isWifiAvailable = isWifiAvailable;
    }

    public VehicleManagement.BusType getTypeOfBus() {
        return typeOfBus;
    }

    public void setTypeOfBus(VehicleManagement.BusType typeOfBus) {
        this.typeOfBus = typeOfBus;
    }

    public boolean isAccessibilityServiceAvailable() {
        return isAccessibilityServiceAvailable;
    }

    public void setAccessibilityServiceAvailable(boolean accessibilityServiceAvailable) {
        isAccessibilityServiceAvailable = accessibilityServiceAvailable;
    }

    public boolean isWifiAvailable() {
        return isWifiAvailable;
    }

    public void setWifiAvailable(boolean wifiAvailable) {
        isWifiAvailable = wifiAvailable;
    }

    @Override
    public String display() {
        super.display();
        System.out.println("Bus Type: " + getTypeOfBus());
        System.out.println("Accessibility Service Avavilable: " + isAccessibilityServiceAvailable());
        System.out.println("Wifi Available: " + isWifiAvailable());
        System.out.println();
        return toString();
    }


}
