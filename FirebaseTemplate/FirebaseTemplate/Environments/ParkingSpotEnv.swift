//
//  ParkingSpotEnv.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

class ParkingSpotEnv: ObservableObject{
    let collectionName = "ParkingSpots"
    @Published var spots: [ParkingSpot] = []

//    func loadSpots(){
//        Networking.getListOf(COLLECTION_NAME: collectionName) { (spots: [ParkingSpot]) in
//            self.spots = spots
//        }
//    }
}
