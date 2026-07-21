//
//  Item.swift
//  BoardingPass
//
//  Created by Mohsin on 21/07/2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
