//
//  CGColor.swift
//  tier-one
//
//  Created by Maxim Skorynin on 20.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

extension CGColor {
    
    var uiColor: UIColor {
        return UIColor(cgColor: self)
    }
    
}
