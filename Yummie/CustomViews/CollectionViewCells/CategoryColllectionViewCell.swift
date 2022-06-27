//
//  CategoryColllectionViewCell.swift
//  Yummie
//
//  Created by Le Tong Minh Hieu on 26/06/2022.
//

import UIKit
import Kingfisher

class CategoryColllectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func setup(category: DishCategory) {
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
}
