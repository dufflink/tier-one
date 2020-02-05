//
//  Instanse.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class Instance {
    
    static let shared = Instance()
    
    let mainWindow: UIWindow
    let navigationController: UINavigationController
    
    // MARK: - Life Cycle
    
    private init() {
        mainWindow = UIWindow()
        mainWindow.backgroundColor = .white
        
        if #available(iOS 13, *) {
            mainWindow.overrideUserInterfaceStyle = .light
        }
        
        navigationController = UINavigationController()
        mainWindow.rootViewController = navigationController
    }
    
}
