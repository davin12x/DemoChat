//
//  DisplayCell.swift
//  chatAssignment
//
//  Created by Lalit on 2016-03-26.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit

class DisplayCell: UICollectionViewCell {
    @IBOutlet weak var productImage:UIImageView?
    @IBOutlet weak var productName:UILabel?
    override func awakeFromNib() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.blackColor().CGColor
        productImage?.clipsToBounds = true
    }
    
    func UpdateCell(model:Model){
        productName?.text = model._productName
        print(model._productName)
    }
    
}
