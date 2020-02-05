//
//  Navigation.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class Navigation {
    
    static let shared = Navigation()
    
    private init() { }
    
    // MARK: - Public Functions
    
    func createMainViewController() -> UIViewController {
        return R.storyboard.main.mainViewController()!
    }
    
}
