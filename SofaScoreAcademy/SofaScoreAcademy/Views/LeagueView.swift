//
//  LeagueView.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 17.03.2024..
//

import UIKit
import SnapKit
import SofaAcademic

final class LeagueView: BaseView {
    
    private let leagueCellView = UIView()
    private let leagueCountryLabel = UILabel()
    private let leagueNameLabel = UILabel()
    private let leagueImageView = UIImageView()
    private let leagueRightPointerImageView = UIImageView()

    override func addViews() {
        
        addSubview(leagueCellView)
        leagueCellView.addSubview(leagueCountryLabel)
        leagueCellView.addSubview(leagueNameLabel)
        leagueCellView.addSubview(leagueImageView)
        leagueCellView.addSubview(leagueRightPointerImageView)
        
    }
    
    override func styleViews() {
                
        leagueCellView.backgroundColor = .white
        
        leagueCountryLabel.font = .headline3
        leagueCountryLabel.textColor = .onSurfaceOnSurfaceLv1
        
        leagueNameLabel.font = .headline3
        leagueNameLabel.textColor = .onSurfaceOnSurfaceLv2
        
        leagueImageView.contentMode = .scaleAspectFit
        leagueImageView.image = UIImage(named: "leagueOne")
        
        leagueRightPointerImageView.contentMode = .scaleAspectFit
        leagueRightPointerImageView.image = UIImage(named: "rightPointer")
        
    }
    
    override func setupConstraints() {
                
        leagueCellView.snp.makeConstraints {
            
            $0.top.equalToSuperview().offset(100)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(56.0)
            
        }
        
        leagueImageView.snp.makeConstraints {
            
            $0.leading.equalTo(leagueCellView.snp.leading).offset(16)
            $0.top.equalTo(leagueCellView.snp.top).offset(12)
            $0.width.height.equalTo(32.0)
            
        }
                
        leagueCountryLabel.snp.makeConstraints {
            
            $0.leading.equalTo(leagueCellView.snp.leading).offset(80)
            $0.top.equalTo(leagueCellView.snp.top).offset(20)
            $0.width.equalTo(50)
            $0.height.equalTo(16.0)
            
        }
        
        leagueNameLabel.snp.makeConstraints {
            
            $0.leading.equalTo(leagueCellView.snp.leading).offset(140)
            $0.top.equalTo(leagueCellView.snp.top).offset(20)
            $0.width.equalTo(91.0)
            $0.height.equalTo(16.0)
            
        }
                
        leagueRightPointerImageView.snp.makeConstraints {
            
            $0.leading.equalTo(leagueCellView.snp.leading).offset(116)
            $0.top.equalTo(leagueCellView.snp.top).offset(16)
            $0.width.height.equalTo(24.0)
            
        }
    }

    func configure(with league: League) {
        leagueCountryLabel.text = league.country
        leagueNameLabel.text = league.leagueName
    }
}


