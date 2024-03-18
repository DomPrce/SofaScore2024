//
//  ViewController.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 10.03.2024..
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startTime1 = Date(timeIntervalSince1970: 1710676800)
        let startTime2 = Date(timeIntervalSince1970: 1710687600)
        let startTime3 = Date(timeIntervalSince1970: 1710694800)
        let startTime4 = Date(timeIntervalSince1970: 1710700200)

        
        view.backgroundColor = .lightGray
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let exampleEvents = [
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 1, teamTwoScore: 2, startTime: startTime1, matchStatus: .isFinished),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 0, teamTwoScore: 1,startTime: startTime2, matchTime: 36, matchStatus: .inProgress),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", startTime: startTime3, matchStatus: .notStarted),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona",startTime: startTime4, matchStatus: .notStarted),
        ]
        
        for event in exampleEvents {
            let matchView = MatchView()
            matchView.configure(with: event)
            stackView.addArrangedSubview(matchView)
            matchView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        }
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 360),
        ])
        
        let leagueView = LeagueView()
        let exampleLeague = League(country: "Spain", leagueName: "LaLiga")
        leagueView.configure(with: exampleLeague)
        view.addSubview(leagueView)
        leagueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leagueView.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 194),
            leagueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            leagueView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            leagueView.heightAnchor.constraint(equalToConstant: 250),
        ])
    }
}


