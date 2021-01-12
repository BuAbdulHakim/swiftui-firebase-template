//
//  ParkingSpot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation

struct ParkingSpot: Codable, Hashable{
    var id: Int
    var address: String
    var location_URL: String
    var countryCode: String
    var phone: String
    var bluetoothSerial: String
    var owner: String
    var isWorking: Bool
}
