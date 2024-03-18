//
//  LeagueView.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 17.03.2024..
//

import UIKit
import SofaAcademic

class LeagueView: BaseView {
    
    private let eventCellsEventCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let country: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.headline3
        label.textColor = UIColor.onSurfaceOnSurfaceLv1
        return label
    }()
    
    private let leagueName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.headline3
        label.textColor = UIColor.onSurfaceOnSurfaceLv2
        return label
    }()
    
    private let leagueImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "leagueOne")
        return imageView
    }()
    
    private let rightPointer: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "rightPointer")
        return imageView
    }()
        

    override func addViews() {
        super.addViews()
        addSubview(eventCellsEventCellView)
        eventCellsEventCellView.addSubview(country)
        eventCellsEventCellView.addSubview(leagueName)
        eventCellsEventCellView.addSubview(leagueImage)
        eventCellsEventCellView.addSubview(rightPointer)
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
            country.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 80),
            country.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 20),
            country.widthAnchor.constraint(equalToConstant: 50),
            country.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            leagueImage.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 16),
            leagueImage.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 12),
            leagueImage.widthAnchor.constraint(equalToConstant: 32.0),
            leagueImage.heightAnchor.constraint(equalToConstant: 32.0),
        ])
        
        NSLayoutConstraint.activate([
            leagueName.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 140),
            leagueName.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 20),
            leagueName.widthAnchor.constraint(equalToConstant: 91.0),
            leagueName.heightAnchor.constraint(equalToConstant: 16.0),
        ])
        
        NSLayoutConstraint.activate([
            rightPointer.leadingAnchor.constraint(equalTo: eventCellsEventCellView.leadingAnchor, constant: 116),
            rightPointer.topAnchor.constraint(equalTo: eventCellsEventCellView.topAnchor, constant: 16),
            rightPointer.widthAnchor.constraint(equalToConstant: 24.0),
            rightPointer.heightAnchor.constraint(equalToConstant: 24.0),
        ])
    }

    func configure(with league: League ) {
        country.text = league.country
        leagueName.text = league.leagueName
    }



}

