//
//  Discipline.swift
//  tier-one
//
//  Created by Maxim Skorynin on 22.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

enum Discipline: CaseIterable {
    
    case dota
    case counterStrike
    
    case quake
    case lol
    
    case war3
    case pubg
    
    case formula
    case apex
    
    // MARK: - Properties
    
    var literal: String {
        switch self {
            case .dota:
                return "D"
            case .counterStrike:
                return "CS"
            case .quake:
                return "Q"
            case .lol:
                return "L"
            case .war3:
                return "W3"
            case .pubg:
                return "P"
            case .formula:
                return "F1"
            case .apex:
                return "A"
        }
    }
    
    var color: UIColor {
        switch self {
            case .dota:
                return #colorLiteral(red: 0.8901960784, green: 0.3450980392, blue: 0.3450980392, alpha: 1)
            case .counterStrike:
                return #colorLiteral(red: 0.4941176471, green: 0.5529411765, blue: 0.9176470588, alpha: 1)
            case .quake:
                return #colorLiteral(red: 0.9176470588, green: 0.8038218381, blue: 0.5222674795, alpha: 1)
            case .lol:
                return #colorLiteral(red: 0.9176470588, green: 0.6093694676, blue: 0.8476667412, alpha: 1)
            case .war3:
                return #colorLiteral(red: 0.4611204338, green: 0.9176470588, blue: 0.745777347, alpha: 1)
            case .pubg:
                return #colorLiteral(red: 0.9176470588, green: 0.6018410771, blue: 0.4782391365, alpha: 1)
            case .formula:
                return #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            case .apex:
                return #colorLiteral(red: 0.5321465929, green: 0.3655765038, blue: 0.9176470588, alpha: 1)
        }
    }
    
}
