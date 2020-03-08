//
//  DetailNewsViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 08.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class DetailNewsViewController: TOViewController {
    
    @IBOutlet weak private var pictureView: NewsImageView!
    @IBOutlet weak private var titleView: UILabel!
    
    @IBOutlet weak private var dateView: UILabel!
    @IBOutlet weak private var textView: UILabel!
    
    @IBOutlet weak private var authorView: UILabel!
    @IBOutlet weak private var sourceLinkView: UILabel!
    
    var model: DetailNewsModel!
    
    override func configure() {
        super.configure()
        title = "Новость"
        isLargeTitle = false
        
        pictureView.setImage(from: model.newsInfo.pictureLink)
        titleView.text = model.newsInfo.title
        
        dateView.text = model.newsInfo.date
        textView.text = model.newsInfo.subtitle
        
        authorView.text = "Автор: @duff"
        sourceLinkView.text = "tierone.com"
    }
    
}
