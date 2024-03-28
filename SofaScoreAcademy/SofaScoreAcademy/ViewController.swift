//
//  ViewController.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 10.03.2024..
//

import UIKit
import SnapKit
import SofaAcademic

class LeagueMatchesViewController: UIViewController {
    
    private let stackView = UIStackView()
    private var exampleEvents: [Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeData()
        addViews()
        styleViews()
        setupConstraints()
    }
    
    private func initializeData() {
        exampleEvents = [
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 1, teamTwoScore: 2, startTime: Constants.startTime1, matchStatus: .isFinished),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 0, teamTwoScore: 1, startTime: Constants.startTime2, matchTime: 36, matchStatus: .inProgress),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", startTime: Constants.startTime3, matchStatus: .notStarted),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", startTime: Constants.startTime4, matchStatus: .notStarted),
        ]
    }
}

extension LeagueMatchesViewController: BaseViewProtocol {
    
    func addViews() {
        view.addSubview(stackView)
        for event in exampleEvents {
            let matchView = MatchView()
            matchView.configure(with: event)
            stackView.addArrangedSubview(matchView)
        }
        let leagueView = LeagueView()
        let exampleLeague = League(country: "Spain", leagueName: "LaLiga")
        leagueView.configure(with: exampleLeague)
        view.addSubview(leagueView)
    }
    
    func styleViews() {
        view.backgroundColor = .gray
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
    }
    
    func setupConstraints() {
        stackView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.width.equalTo(360)
        }
        if let leagueView = view.subviews.first(where: { $0 is LeagueView }) {
            leagueView.snp.makeConstraints {
                $0.bottom.equalTo(stackView.snp.top).offset(-56)
                $0.centerX.equalToSuperview()
                $0.width.equalTo(stackView.snp.width)
            }
        }
        stackView.arrangedSubviews.forEach {
            if let matchView = $0 as? MatchView {
                matchView.snp.makeConstraints {
                    $0.height.equalTo(46)
                }
            }
        }
    }
}
