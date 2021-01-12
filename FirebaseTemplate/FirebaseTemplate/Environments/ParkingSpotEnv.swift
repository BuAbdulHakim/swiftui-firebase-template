//
//  ParkingSpotEnv.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation

class ParkingSpotEnv: ObservableObject{
    let collectionName = "ParkingSpot"
    @Published var spots: [ParkingSpot] = []
    
    func loadItems(){
        Networking.getListOf(COLLECTION_NAME: collectionName) { (spots: [ParkingSpot]) in
            self.spots = spots
        }
    }
}
