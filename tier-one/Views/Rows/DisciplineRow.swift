//
//  DisciplineRow.swift
//  tier-one
//
//  Created by Maxim Skorynin on 22.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class DisciplineRow: UICollectionViewCell {
    
    @IBOutlet weak private var bodyView: TOView!
    @IBOutlet weak private var literalView: UILabel!
    
    private var model: Discipline = .dota
    
    override func prepareForReuse() {
        super.prepareForReuse()
        setDeselected()
    }
    
    // MARK: - Public Functions
    
    func configure(from model: Discipline, isSelected: Bool) {
        self.model = model
        literalView.text = model.literal
        
        isSelected ? setSelected() : setDeselected()
    }
    
    func setSelected() {
        bodyView.backgroundColor = model.color
    }
    
    func setDeselected() {
        bodyView.backgroundColor = #colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)
    }
    
}
