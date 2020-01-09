//
//  feedCell.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/8/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class feedCell: UITableViewCell {

    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var mainIngredientLabel: UILabel!
    @IBOutlet weak var whereToBuy: UILabel!

    func configureCell(for product: Products) {
        
        mainIngredientLabel.text = "main ingredient: \(product.main_ingredient)"
        
        whereToBuy.text = "find it at: \(product.where_to_buy)"
        
        // need to make the url session to access the images
        
        
//getting the image!!!!!!!!
        productImageView.getImage(with: product.imageURL) { [weak self]
            (result) in
            switch result {
            case .failure:
                DispatchQueue.main.async {
                    self?.productImageView.image = UIImage(systemName: "person fill")
                }
            case .success( let image):
                DispatchQueue.main.async {
                    self?.productImageView.image = image
                }
            }
        }
        
    }
    
    
}
