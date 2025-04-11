//
//  Item.swift
//  CoachTrack
//
//  Created by jon richardson-williams on 11/04/2025.
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
