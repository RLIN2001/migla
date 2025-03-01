//
//  Item.swift
//  migla
//
//  Created by Riccardo Lin on 01/03/25.
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
