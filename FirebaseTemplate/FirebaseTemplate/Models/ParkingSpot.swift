//
//  ParkingSpot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation

struct ParkingSpot: Hashable, Identifiable{
    var id = UUID()
    var name: String
    var childSlot: [ChildSlot]
//    var address: String
//    var location_URL: String
//    var countryCode: String
//    var phone: String
//    var bluetoothSerial: String
//    var owner: String
//    var isWorking: Bool
}

var parkingSpots = [
    ParkingSpot(name: "Bin-Khaldun St", childSlot: BinKhaldun),
    ParkingSpot(name: "Tunisia St", childSlot: Tunisia),
    ParkingSpot(name: "Beirut St", childSlot: Beirut),
    ParkingSpot(name: "Soor St", childSlot: Soor),
    ParkingSpot(name: "Al-Shuhada St", childSlot: AlShuhada)

]
