//
//  NewsImageView.swift
//  tier-one
//
//  Created by Maxim Skorynin on 20.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import Kingfisher

final class NewsImageView: UIImageView {
    
    func setImage(from link: String) {
        if let url = URL(string: link) {
            kf.setImage(with: url)
        }
    }
    
}
