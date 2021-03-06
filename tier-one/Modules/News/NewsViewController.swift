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
    
    // MARK: - Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        isFullScreen = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
    }
    
    override func configure() {
        super.configure()
        navigationTitle = "Новости"
    }
    
    // MARK: - Private Functions
    
    private func configureTable() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(resource: R.nib.newsRow), forCellReuseIdentifier: R.reuseIdentifier.newsRow.identifier)
    }
    
}

// MARK: - TableView Delegate

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let row = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.newsRow, for: indexPath) else {
            return UITableViewCell()
        }
        
        let data = model.news[indexPath.row]
        row.configure(from: data)
        
        return row
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newsModel = model.news[indexPath.row]
        let controller = Navigation.shared.createDetailNewsViewController(with: newsModel)
        controller.push(clearBackStack: false)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let disciplineCollectionView = DisciplineCollectionView()
        disciplineCollectionView.itemsDelegate = self
        
        return disciplineCollectionView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
}

// MARK: - DisciplineCollectionView Delegate

extension NewsViewController: DisciplineCollectionViewDelegate {
    
    func didSelect(item: Discipline) {
        
    }
    
} 
