//
//  StartingViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 08.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class StartingViewController: TOViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isFullScreen = true
    }
     
    @IBAction func buttonDidPress(_ sender: Any) {
        API.shared.authorize()
//        Navigation.shared.createTabBarViewController().push(clearBackStack: true)
    }
    
}
