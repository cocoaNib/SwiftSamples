//
//  WisdomViewController.swift
//  CollectionViewDynamicCellSize
//
//  Created by Renate Wünschl on 04.04.19.
//  Copyright © 2019 Renate Wünschl. All rights reserved.
//

import UIKit

class WisdomViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    
    let wisdomData = ["The", "best", "thing", "about", "a", "boolean", "is", "even", "if", "you", "are", "wrong,", "you", "are", "only", "off", "by", "a", "bit."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewLayout.estimatedItemSize = CGSize(width: 100.0, height: 57.0)
    }
}

extension WisdomViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wisdomData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WisdomCollectionViewCell", for: indexPath) as! WisdomCollectionViewCell
        cell.viewModel = wisdomData[indexPath.row]
        return cell
    }
}

