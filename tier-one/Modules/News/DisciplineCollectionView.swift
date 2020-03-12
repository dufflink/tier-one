//
//  DisciplineCollectionView.swift
//  tier-one
//
//  Created by Maxim Skorynin on 22.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

protocol DisciplineCollectionViewDelegate: class {
    
    func didSelect(item: Discipline)
    
}

final class DisciplineCollectionView: UICollectionView {
    
    weak var itemsDelegate: DisciplineCollectionViewDelegate?
    
    private var items: [Discipline] = Discipline.allCases
    private var currentSelectedIndex = 0
    
    private var currentSelectedItem: Discipline {
        return items[currentSelectedIndex]
    }
    
    convenience init() {
        self.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        
        configureCollectionView()
        configureFlowLayout()
    }
    
    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCollectionView()
        configureFlowLayout()
    }
    
    // MARK: - Private Functions
    
    private func configureCollectionView() {
        dataSource = self
        delegate = self
        
        register(UINib(resource: R.nib.disciplineRow), forCellWithReuseIdentifier: R.nib.disciplineRow.identifier)
        contentInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
        backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
    }
    
    private func configureFlowLayout() {
        let newCollectionViewLayout = UICollectionViewFlowLayout()
        newCollectionViewLayout.scrollDirection = .horizontal
        newCollectionViewLayout.minimumLineSpacing = 2
        
        collectionViewLayout = newCollectionViewLayout
    }
    
}

// MARK: - UICollectionViewDelegate Functions

extension DisciplineCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let row = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.disciplineRow, for: indexPath) else {
            return UICollectionViewCell()
        }
        
        let data = items[indexPath.row]
        let isSelected = currentSelectedIndex == indexPath.row
        
        row.configure(from: data, isSelected: isSelected)
        
        return row
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentSelectedIndex = indexPath.row
        reloadData()
        
        itemsDelegate?.didSelect(item: currentSelectedItem)
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout Functions

extension DisciplineCollectionView: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: 70)
    }

}
