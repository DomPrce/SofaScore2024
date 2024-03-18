//
//  Event.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 16.03.2024..
//

import Foundation

struct League{
    var country: String
    var leagueName: String
}

struct Event{
    var teamOneName: String
    var teamTwoName: String
    var teamOneScore: Int?
    var teamTwoScore: Int?
    var startTime: Date?
    var matchTime: Int?
    var matchStatus: MatchStatus
}

extension Event {
    var formattedStartTime: String {
        guard let startTime = self.startTime else { return "TBD" }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: startTime)
    }
}


enum MatchStatus{
    case notStarted
    case inProgress
    case isFinished
}

extension MatchStatus {
    var description: String {
        switch self {
        case .notStarted: return "Not Started"
        case .inProgress: return "In Progress"
        case .isFinished: return "Finished"
        }
    }
}

