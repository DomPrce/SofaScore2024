//
//  Event.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 16.03.2024..
//

import Foundation

struct League {
    
    let country: String
    let leagueName: String
    
}

struct Event{
    
    var teamOneName: String
    var teamTwoName: String
    var teamOneScore: Int?
    var teamTwoScore: Int?
    var startTime: Date?
    var matchTime: Int?
    var matchStatus: MatchStatus
    var formattedStartTime: String {
        guard let startTime = self.startTime else { return "TBD" }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: startTime)
    }
    
}

enum MatchStatus {
    
    case notStarted
    case inProgress
    case isFinished
    var description: String {
        switch self {
        case .notStarted:
            "Not Started"
        case .inProgress:
            "In Progress"
        case .isFinished: "Finished"
        }
    }
    
}

