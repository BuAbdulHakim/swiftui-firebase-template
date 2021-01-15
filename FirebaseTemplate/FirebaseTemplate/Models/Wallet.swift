//
//  Wallet.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 15/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

struct Wallet: Codable, Identifiable {
    var id = UUID()
    var user: User
    var money: Double
}
