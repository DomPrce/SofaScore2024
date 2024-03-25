//
//  ViewController.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 10.03.2024..
//

import UIKit
import SnapKit
import SofaAcademic

class LeagueMatchesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var exampleEvents: [Event] = []
    private let tableView = UITableView()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.separatorStyle = .none
        initializeData()
        setupView()
        setupConstraints()
        
    }

    private func initializeData() {
        
        exampleEvents = [
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 1, teamTwoScore: 2, startTime: startTime1, matchStatus: .isFinished),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", teamOneScore: 0, teamTwoScore: 1, startTime: startTime2, matchTime: 36, matchStatus: .inProgress),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", startTime: startTime3, matchStatus: .notStarted),
            Event(teamOneName: "Manchester United", teamTwoName: "Barcelona", startTime: startTime4, matchStatus: .notStarted)
        ]
        
    }

    private func setupView() {
        
        view.backgroundColor = .lightGray
        view.addSubview(tableView)

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MatchViewCell.self, forCellReuseIdentifier: "MatchViewCell")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return exampleEvents.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MatchViewCell", for: indexPath) as? MatchViewCell else {
            return UITableViewCell()
        }
        let event = exampleEvents[indexPath.row]
        cell.configure(with: event)
        return cell
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 56
        
    }

    private func setupConstraints() {
        
        tableView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(224).priority(.low)
            make.width.equalToSuperview()

        }
    }
}





