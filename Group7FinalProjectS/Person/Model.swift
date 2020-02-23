
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation
class Model{

    // MARK: - Welcome
    struct Welcome: Codable {
        let jsondata: [Jsondatum]
    }

    // MARK: - Jsondatum
    struct Jsondatum: Codable {
        let jsondatumClass: String
        let id: Int
        let firstName, lastName, gender: String
        let birthDate: Int?
        let mobileNumber, emailID, userName, password, type: String
        let address, city: String
        let vehicle: Vehicle

        enum CodingKeys: String, CodingKey {
            case jsondatumClass = "@class"
            case id, firstName, lastName, gender, birthDate, mobileNumber, type,emailID, userName, password, address, city, vehicle
        }
    }

    // MARK: - Vehicle
    struct Vehicle: Codable {
        let vehicleClass: String
        let id: Int
        let vehicleIdentificationNumber, vehicleDescription, manufacturerName: String
        let isSelfDrive, isInsured: Bool
        let noOfSeat: Int
        let fuelType, topSpeed, mileage, vehicleType: String

        enum CodingKeys: String, CodingKey {
            case vehicleClass = "@class"
            case id, vehicleIdentificationNumber, vehicleDescription, manufacturerName, isSelfDrive, isInsured, noOfSeat, fuelType, topSpeed, mileage, vehicleType
        }
    }

}
