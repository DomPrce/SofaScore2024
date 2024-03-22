//
//  MatchView.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 17.03.2024..
//

import UIKit
import SnapKit
import SofaAcademic

final class MatchView: BaseView {
    
    enum WinnerCode {
        case home
        case away
    }
    
    private let matchCellView = UIView()
    private let teamOneNameLabel = UILabel()
    private let teamTwoNameLabel = UILabel()
    private let teamOneScoreLabel = UILabel()
    private let teamTwoScoreLabel = UILabel()
    private let teamOneImageView = UIImageView()
    private let teamTwoImageView = UIImageView()
    private let matchTimeLabel = UILabel()
    private let matchStatusLabel = UILabel()
    private let matchCellverticalDivider = UIView()

    override func addViews() {
        
        addSubview(matchCellView)
        matchCellView.addSubview(teamOneNameLabel)
        matchCellView.addSubview(teamTwoNameLabel)
        matchCellView.addSubview(teamOneScoreLabel)
        matchCellView.addSubview(teamTwoScoreLabel)
        matchCellView.addSubview(teamOneImageView)
        matchCellView.addSubview(teamTwoImageView)
        matchCellView.addSubview(matchTimeLabel)
        matchCellView.addSubview(matchStatusLabel)
        matchCellView.addSubview(matchCellverticalDivider)
        
    }
    
    override func styleViews() {
                
        matchCellView.backgroundColor = .white
        
        teamOneNameLabel.font = .body
        teamTwoNameLabel.font = .body
        teamOneScoreLabel.font = .body
        teamOneScoreLabel.textAlignment = .center
        teamTwoScoreLabel.font = .body
        teamTwoScoreLabel.textAlignment = .center
        
        teamOneImageView.contentMode = .scaleAspectFit
        teamOneImageView.image = UIImage(named: "teamOne")
        teamTwoImageView.contentMode = .scaleAspectFit
        teamTwoImageView.image = UIImage(named: "teamTwo")
        
        matchTimeLabel.font = .micro
        matchTimeLabel.textColor = .onSurfaceOnSurfaceLv2
        matchTimeLabel.textAlignment = .center
        
        matchStatusLabel.font = .micro
        matchStatusLabel.textAlignment = .center
        
        matchCellverticalDivider.backgroundColor = .onSurfaceOnSurfaceLv2
        
    }
    
    override func setupConstraints() {
                
        matchCellView.snp.makeConstraints {
            
            $0.top.equalToSuperview().offset(100)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(56.0)
            
        }
        
        teamOneNameLabel.snp.makeConstraints {
            
            $0.leading.equalTo(matchCellView.snp.leading).offset(104)
            $0.top.equalTo(matchCellView.snp.top).offset(10)
            $0.height.equalTo(16.0)
            
        }
        
        teamTwoNameLabel.snp.makeConstraints {
            
            $0.leading.equalTo(teamOneNameLabel)
            $0.top.equalTo(teamOneNameLabel.snp.bottom).offset(4)
            $0.height.equalTo(16.0)
            
        }
        
        teamOneScoreLabel.snp.makeConstraints {
            
            $0.leading.equalTo(matchCellView.snp.leading).offset(320)
            $0.top.equalTo(matchCellView.snp.top).offset(10)
            $0.width.equalTo(32.0)
            $0.height.equalTo(16.0)
            
        }
        
        teamTwoScoreLabel.snp.makeConstraints {
            
            $0.leading.equalTo(teamOneScoreLabel)
            $0.top.equalTo(teamOneScoreLabel.snp.bottom).offset(4)
            $0.width.equalTo(32.0)
            $0.height.equalTo(16.0)
            
        }
        
        teamOneImageView.snp.makeConstraints {
            
            $0.leading.equalTo(matchCellView.snp.leading).offset(80)
            $0.top.equalTo(matchCellView.snp.top).offset(10)
            $0.width.height.equalTo(16.0)
            
        }
        
        teamTwoImageView.snp.makeConstraints {
            
            $0.leading.equalTo(teamOneImageView)
            $0.top.equalTo(teamOneScoreLabel.snp.bottom).offset(4)
            $0.width.height.equalTo(16.0)
            
        }
        
        matchTimeLabel.snp.makeConstraints {
            
            $0.leading.equalTo(matchCellView.snp.leading).offset(4)
            $0.top.equalTo(matchCellView.snp.top).offset(10)
            $0.width.equalTo(56.0)
            $0.height.equalTo(16.0)
            
        }
        
        matchStatusLabel.snp.makeConstraints {
            
            $0.leading.equalTo(matchTimeLabel)
            $0.top.equalTo(teamOneScoreLabel.snp.bottom).offset(4)
            $0.width.equalTo(56.0)
            $0.height.equalTo(16.0)
            
        }
        
        matchCellverticalDivider.snp.makeConstraints {
            
            $0.leading.equalTo(matchCellView.snp.leading).offset(63)
            $0.top.equalTo(matchCellView.snp.top).offset(8)
            $0.width.equalTo(1.0)
            $0.height.equalTo(40.0)
            
        }
    }
    
    func configure(with event: Event) {
        teamOneNameLabel.text = event.teamOneName
        teamTwoNameLabel.text = event.teamTwoName
        matchTimeLabel.text = event.formattedStartTime
        
        let teamOneScore = event.teamOneScore ?? 0
        let teamTwoScore = event.teamTwoScore ?? 0
        
        teamOneScoreLabel.text = teamOneScore.description
        teamTwoScoreLabel.text = teamTwoScore.description
        updateStatus(for: event.matchStatus, with: event.matchTime, teamOneScore: teamOneScore, teamTwoScore: teamTwoScore)
    }

    private func updateStatus(for status: MatchStatus, with time: Int?, teamOneScore: Int, teamTwoScore: Int) {
        let winnerCode: WinnerCode? = {
            if status == .isFinished {
                if teamOneScore > teamTwoScore {
                    return .home
                } else if teamOneScore < teamTwoScore {
                    return .away
                }
            }
            return nil
        }()

        let colors = MatchView.getTeamNameColors(for: status, winnerCode: winnerCode)
        
        matchStatusLabel.text = status == .notStarted ? "-" : (status == .inProgress ? "\(time ?? 0)'" : "FT")
        matchStatusLabel.textColor = status == .inProgress ? .specificLive : .onSurfaceOnSurfaceLv2
        
        let scoreColor: UIColor = status == .inProgress ? .specificLive : colors.left
        teamOneNameLabel.textColor = colors.left
        teamTwoNameLabel.textColor = colors.right
        teamOneScoreLabel.textColor = scoreColor
        teamTwoScoreLabel.textColor = scoreColor
    }


    
    static func getTeamNameColors(for status: MatchStatus, winnerCode: WinnerCode?) -> ValuePair<UIColor> {
        var leftColor: UIColor = .onSurfaceOnSurfaceLv1
        var rightColor: UIColor = .onSurfaceOnSurfaceLv1
        if status == .isFinished {
            switch winnerCode {
            case .home:
                leftColor = .onSurfaceOnSurfaceLv1
                rightColor = .onSurfaceOnSurfaceLv2
            case .away:
                leftColor = .onSurfaceOnSurfaceLv2
                rightColor = .onSurfaceOnSurfaceLv1
            case .none:
                break
            }
        }
        return ValuePair(left: leftColor, right: rightColor)
    }

}




    

