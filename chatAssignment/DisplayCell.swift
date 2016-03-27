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
        self.layer.cornerRadius = 2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 0.3
        self.layer.borderColor = UIColor.grayColor().CGColor
        productImage?.clipsToBounds = true
    }
    
    func UpdateCell(model:Model){
        productName?.text = model._productName
        if model.imagePath != nil{
            if  let url = NSURL(string: model.imagePath!){
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
                     let data = NSData(contentsOfURL: url)
                    if data != nil{
                        dispatch_async(dispatch_get_main_queue(), { 
                            self.productImage?.image = UIImage(data: data!)
                        })
                    }
                    
                    
                    
                })
            
            }
          
        }
        
    }
    
}
