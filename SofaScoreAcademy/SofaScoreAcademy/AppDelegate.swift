//
//  AppDelegate.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 10.03.2024..
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = LeagueMatchesViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

