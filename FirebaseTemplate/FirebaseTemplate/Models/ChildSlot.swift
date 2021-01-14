//
//  ChildSlot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 12/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

struct ChildSlot: Hashable, Identifiable{
    //var id: Int
    //var ParkingSlotID: Int
    var number: Int
    var status: String
    var color: Color
    
    var id = UUID()
    
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

var BinKhaldun = [
    ChildSlot(number: 1, status: "Empty", color: .green),
    ChildSlot(number: 2, status: "Occupied", color: .red),
    ChildSlot(number: 3, status: "Reserved", color: .yellow),
    ChildSlot(number: 4, status: "Occupied", color: .red),
]
var Tunisia = [
    ChildSlot(number: 1, status: "Occupied", color: .red),
    ChildSlot(number: 2, status: "Occupied", color: .red),
    ChildSlot(number: 3, status: "Empty", color: .green),
    ChildSlot(number: 4, status: "Occupied", color: .red),
]

var Beirut = [
    ChildSlot(number: 1, status: "Reserved", color: .yellow),
    ChildSlot(number: 2, status: "Occupied", color: .red),
    ChildSlot(number: 3, status: "Reserved", color: .yellow),
    ChildSlot(number: 4, status: "Reserved", color: .yellow),
]

var Soor = [
    ChildSlot(number: 1, status: "Occupied", color: .red),
    ChildSlot(number: 2, status: "Empty", color: .green),
    ChildSlot(number: 3, status: "Empty", color: .green),
    ChildSlot(number: 4, status: "Empty", color: .green),
]

var AlShuhada = [
    ChildSlot(number: 1, status: "Occupied", color: .red),
    ChildSlot(number: 2, status: "Occupied", color: .red),
    ChildSlot(number: 3, status: "Occupied", color: .red),
    ChildSlot(number: 4, status: "Occupied", color: .red),
]

