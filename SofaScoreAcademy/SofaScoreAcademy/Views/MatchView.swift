//
//  MatchView.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 17.03.2024..
//

import UIKit
import SofaAcademic

class MatchView: BaseView {
    
    private let eventCellsEventCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let teamOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.body
        return label
    }()
    
    private let teamTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.body
        return label
    }()
    
    private let teamOneScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.body
        label.textAlignment = .center
        return label
    }()
    
    private let teamTwoScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.body
        label.textAlignment = .center
        return label
    }()
    
    
    private let teamOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "teamOne")
        return imageView
    }()
        
    
    private let teamTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "teamTwo")
        return imageView
    }()
    
    private let time: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.micro
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    private let status: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.micro
        label.textAlignment = .center
        return label
    }()
    
    let verticalDivider: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func addViews() {
        super.addViews()
        addSubview(eventCellsEventCellView)
        eventCellsEventCellView.addSubview(teamOneLabel)
        eventCellsEventCellView.addSubview(teamTwoLabel)
        eventCellsEventCellView.addSubview(teamOneScoreLabel)
        eventCellsEventCellView.addSubview(teamTwoScoreLabel)
        eventCellsEventCellView.addSubview(teamOneLabel)
        eventCellsEventCellView.addSubview(teamTwoLabel)
        eventCellsEventCellView.addSubview(teamOneImageView)
        eventCellsEventCellView.addSubview(teamTwoImageView)
        eventCellsEventCellView.addSubview(time)
        eventCellsEventCellView.addSubview(status)
        eventCellsEventCellView.addSubview(verticalDivider)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        NSLayoutConstraint.activate([
            eventCellsEventCellView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            eventCellsEventCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            eventCellsEventCellView.trailingAnchor.constraint(equalTo: leadingAnchor, constant: 360),
            eventCellsEventCellView.heightAnchor.constraint(equalToConstant: 56.0),
        ])
        
       
        NSLayoutConstraint.activate([
            teamOneLabel.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 104),
            teamOneLabel.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 10),
            teamOneLabel.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            teamTwoLabel.leadingAnchor.constraint(equalTo: teamOneLabel.leadingAnchor),
            teamTwoLabel.topAnchor.constraint(equalTo: teamOneLabel.bottomAnchor, constant: 4),
            teamTwoLabel.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            teamOneScoreLabel.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 320),
            teamOneScoreLabel.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 10),
            teamOneScoreLabel.widthAnchor.constraint(equalToConstant: 32.0),
            teamOneScoreLabel.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            teamTwoScoreLabel.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 320),
            teamTwoScoreLabel.topAnchor.constraint(equalTo: teamOneScoreLabel.bottomAnchor, constant: 4),
            teamTwoScoreLabel.widthAnchor.constraint(equalToConstant: 32.0),
            teamTwoScoreLabel.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            teamOneImageView.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 80),
            teamOneImageView.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 10),
            teamOneImageView.widthAnchor.constraint(equalToConstant: 16.0),
            teamOneImageView.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            teamTwoImageView.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 80),
            teamTwoImageView.topAnchor.constraint(equalTo: teamOneScoreLabel.bottomAnchor, constant: 4),
            teamTwoImageView.widthAnchor.constraint(equalToConstant: 16.0),
            teamTwoImageView.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            time.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 4),
            time.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 10),
            time.widthAnchor.constraint(equalToConstant: 56.0),
            time.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            status.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 4),
            status.topAnchor.constraint(equalTo: teamOneScoreLabel.bottomAnchor, constant: 4),
            status.widthAnchor.constraint(equalToConstant: 56.0),
            status.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            verticalDivider.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 63),
            verticalDivider.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 8),
            verticalDivider.widthAnchor.constraint(equalToConstant: 1.0),
            verticalDivider.heightAnchor.constraint(equalToConstant: 40.0),
        ])
    }

    func configure(with event: Event) {
        teamOneLabel.text = event.teamOneName
        teamTwoLabel.text = event.teamTwoName
        time.text = event.formattedStartTime
        
        let teamOneScore = event.teamOneScore ?? 0
        let teamTwoScore = event.teamTwoScore ?? 0
            
        teamOneScoreLabel.text = "\(teamOneScore)"
        teamTwoScoreLabel.text = "\(teamTwoScore)"
        
        
        switch event.matchStatus {
            
            case .inProgress:
            
            teamOneLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            teamTwoLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            status.text = "\(event.matchTime ?? 0)'"
            status.textColor = UIColor.specificLive
            teamOneScoreLabel.textColor = UIColor.specificLive
            teamTwoScoreLabel.textColor = UIColor.specificLive
            
            case .isFinished:
            status.text = "FT"
            status.textColor = UIColor.onSurfaceOnSurfaceLv2

            if teamOneScore > teamTwoScore {
                teamTwoLabel.textColor = UIColor.onSurfaceOnSurfaceLv2
                teamOneLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
                teamTwoScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv2
                teamOneScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            } else if teamOneScore < teamTwoScore {
                teamOneLabel.textColor = UIColor.onSurfaceOnSurfaceLv2
                teamTwoLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
                teamOneScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv2
                teamTwoScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            } else {
                teamOneLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
                teamTwoLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
                teamOneScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
                teamTwoScoreLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            }
            
            case .notStarted:
            
            status.text = "-"
            status.textColor = UIColor.onSurfaceOnSurfaceLv2
            teamOneLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            teamTwoLabel.textColor = UIColor.onSurfaceOnSurfaceLv1
            teamOneScoreLabel.text = ""
            teamTwoScoreLabel.text = ""
        }
            
    }



}

