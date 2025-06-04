//
//  PlayerAssignment.swift
//  CoachTrack
//
//  Created by jon richardson-williams on 11/04/2025.
//


import Foundation
import SwiftData

enum Position: String, Codable, CaseIterable {
    case goalkeeper
    case field
    case substitute
}

@Model
class PlayerAssignment {
    @Attribute(.unique) var id: UUID
    var position: Position
    var hasBeenGoalkeeper: Bool
    var hasBeenSubstitute: Bool
    var minutesPlayed: Int
    var minutesInGoal: Int
    var minutesSubbed: Int

    @Relationship var player: Player?
    @Relationship var match: Match?

    init(position: Position = .field,
         hasBeenGoalkeeper: Bool = false,
         hasBeenSubstitute: Bool = false,
         minutesPlayed: Int = 0,
         minutesInGoal: Int = 0,
         minutesSubbed: Int = 0,
         player: Player? = nil,
         match: Match? = nil) {
        self.id = UUID()
        self.position = position
        self.hasBeenGoalkeeper = hasBeenGoalkeeper
        self.hasBeenSubstitute = hasBeenSubstitute
        self.minutesPlayed = minutesPlayed
        self.minutesInGoal = minutesInGoal
        self.minutesSubbed = minutesSubbed
        self.player = player
        self.match = match
    }
}
