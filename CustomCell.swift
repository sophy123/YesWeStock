//
//  CustomCell.swift
//  yeswestock
//
//  Created by Alexander Birks on 27/06/2016.
//  Copyright © 2016 Alexander Birks. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet private weak var CollectionView: UICollectionView!

    func setCollectionViewDataSourceDelegate
        <D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>
        (dataSourceDelegate: D, forRow row: Int) {
        
        CollectionView.delegate = dataSourceDelegate
        CollectionView.dataSource = dataSourceDelegate
        CollectionView.tag = row
        CollectionView.reloadData()
    }
    
    
}
