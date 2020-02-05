//
//  AppDelegate.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let mainViewController = Navigation.shared.createMainViewController()
        mainViewController.push(clearBackStack: true)
        
        Instance.shared.mainWindow.makeKeyAndVisible()
        return true
    }

}
