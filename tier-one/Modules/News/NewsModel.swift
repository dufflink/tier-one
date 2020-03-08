//
//  NewsModel.swift
//  tier-one
//
//  Created by Maxim Skorynin on 20.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

final class NewsModel {
    
    var news: [News] = []
    
    // MARK: - Life Cycle
    
    init() {
        configure()
    }
    
    // MARK: - Public Functions
    
    func configure() {
        let news1 = News(pictureLink: "https://techrocks.ru/wp-content/uploads/2017/08/cybersport.jpg", title: "Lorem ipsum dolor sit amet, consect sel for…", subtitle: "Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…Lorem ipsum dolor sit amet, consect sel for…", date: "12.04.2020")
        let news2 = News(pictureLink: "https://ru.epicstars.com/wp-content/uploads/2018/04/cybersport.jpg", title: "Lorem ipsum dolor sit amet, consect sel for…", subtitle: "Lorem ipsum dolor sit amet, consect sel for…", date: "12.04.2020")
        let news3 = News(pictureLink: "https://24cyber.ru/uploads/images/5d9cbe94c127e.jpg", title: "Lorem ipsum dolor sit amet, consect sel for…", subtitle: "Lorem ipsum dolor sit amet, consect sel for…", date: "12.04.2020")
        
        news += [
            news1, news2, news3
        ]
    }
    
}
