//
//  NewsViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 08.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class NewsViewController: TOViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func configure() {
        super.configure()
        isFullScreen = false
        navigationTitle = "Новости"
    }
    
}
