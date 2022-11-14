//
//  CategoryCollectionViewCell.swift
//  CollectionViewTwoSizes2
//
//  Created by Igor Fernandes on 14/11/22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "CategoryCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
