//
//  NewsViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 08.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class NewsViewController: TOViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let model = NewsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTable()
    }
    
    override func configure() {
        super.configure()
        isFullScreen = false
        navigationTitle = "Новости"
    }
    
    private func configureTable() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(resource: R.nib.newsRow), forCellReuseIdentifier: R.reuseIdentifier.newsRow.identifier)
    }
    
}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let row = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.newsRow.identifier, for: indexPath) as? NewsRow else {
            return UITableViewCell()
        }
        
        let data = model.news[indexPath.row]
        row.configure(from: data)
        
        return row
    }
    
}
