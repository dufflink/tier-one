//
//  Constants.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

struct Constants {
    
    static var shared = Constants()
    
    let screenWidth: CGFloat = {
        return UIScreen.main.bounds.width
    }()
    
    let screenHeight: CGFloat = {
        return UIScreen.main.bounds.height
    }()
    
    let defaultStatusBarStyle: UIStatusBarStyle = {
        guard #available(iOS 13, *) else {
            return .default
        }
        
        return .lightContent
    }()
    
}
