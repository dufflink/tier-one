//
//  UIView.swift
//  tier-one
//
//  Created by Maxim Skorynin on 07.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        layer.mask = mask
    }
    
}
