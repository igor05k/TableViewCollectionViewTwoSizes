//
//  DefaultFoodCollectionViewCell.swift
//  CollectionViewTwoSizes2
//
//  Created by Igor Fernandes on 14/11/22.
//

import UIKit

class DefaultFoodCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "DefaultFoodCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
