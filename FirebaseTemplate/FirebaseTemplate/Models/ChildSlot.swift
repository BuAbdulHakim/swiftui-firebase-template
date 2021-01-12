//
//  ChildSlot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation

struct ChildSlot: Hashable{
    var id: Int
    var ParkingSlotID: Int
    var number: Int
    var status: Status
    
    enum Status{
        case empty, occupied, reserved
    }
    func ChildSlotStatus(status: Status) -> String? {
        if status == .empty{
            return "Empty"
        } else if status == .occupied{
            return "Occupied"
        } else {
            return "Reserved"
        }
    }
}

