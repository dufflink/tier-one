//
//  NewsRow.swift
//  tier-one
//
//  Created by Maxim Skorynin on 20.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class NewsRow: UITableViewCell {
    
    @IBOutlet weak private var pictureView: NewsImageView!
    @IBOutlet weak private var titleView: UILabel!
    
    @IBOutlet weak private var subtitleView: UILabel!
    @IBOutlet weak private var dateView: UILabel!
    
    // MARK: - Public Functions
    
    func configure(from model: News) {
        titleView.text = model.title
        subtitleView.text = model.subtitle
        
        dateView.text = model.date
        pictureView.setImage(from: model.pictureLink)
    }
    
}
