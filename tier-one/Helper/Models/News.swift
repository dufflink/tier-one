//
//  News.swift
//  tier-one
//
//  Created by Maxim Skorynin on 20.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

final class News {
    
    let pictureLink: String
    let title: String
    
    let subtitle: String
    let date: String
    
    init(pictureLink: String, title: String, subtitle: String, date: String) {
        self.pictureLink = pictureLink
        self.title = title
        
        self.subtitle = subtitle
        self.date = date
    }
    
}
