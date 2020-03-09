//
//  TONavigationController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 09.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class TONavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        navigationBar.prefersLargeTitles = true
        
        navigationBar.shadowImage = UIImage()
        navigationBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        
        navigationBar.isTranslucent = true
        navigationBar.barStyle = .black
    }
    
}
