//
//  CustomCollectionViewCell.swift
//  Lesson2Xcode
//
//  Created by Роман Сницарюк on 16.09.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    func configure(with image: UIImage) {
        pictureImageView.image = image
    }
}
