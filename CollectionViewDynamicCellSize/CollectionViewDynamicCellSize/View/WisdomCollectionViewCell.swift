//
//  WisdomCollectionViewCell.swift
//  CollectionViewDynamicCellSize
//
//  Created by Renate Wünschl on 04.04.19.
//  Copyright © 2019 Renate Wünschl. All rights reserved.
//

import UIKit

class WisdomCollectionViewCell: UICollectionViewCell {
    
    var viewModel: String = "" {
        didSet {
            updateCell()
        }
    }
    
    @IBOutlet weak var textLabel: UILabel!
   
    func updateCell() {
        backgroundColor = .yellow
        textLabel.text = viewModel
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let newLayoutAttributes = super.preferredLayoutAttributesFitting(layoutAttributes)
        
        let fittingSize = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        newLayoutAttributes.frame.size = fittingSize
    
        return newLayoutAttributes
    }
}
