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
        bodyView.backgroundColor = #colorLiteral(red: 0.8533854167, green: 0.7588012525, blue: 0.1035696216, alpha: 1)
    }
    
    func setDeselected() {
        bodyView.backgroundColor = #colorLiteral(red: 0.2859058415, green: 0.2859058415, blue: 0.2859058415, alpha: 1)
    }
    
}
