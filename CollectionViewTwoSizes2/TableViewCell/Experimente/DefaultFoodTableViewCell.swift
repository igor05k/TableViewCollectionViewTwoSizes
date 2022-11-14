//
//  DefaultFoodTableViewCell.swift
//  CollectionViewTwoSizes2
//
//  Created by Igor Fernandes on 14/11/22.
//

import UIKit

class DefaultFoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "DefaultFoodTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(DefaultFoodCollectionViewCell.nib(), forCellWithReuseIdentifier: DefaultFoodCollectionViewCell.identifier)
    }
}

extension DefaultFoodTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultFoodCollectionViewCell.identifier, for: indexPath) as! DefaultFoodCollectionViewCell
        return cell
    }
}
