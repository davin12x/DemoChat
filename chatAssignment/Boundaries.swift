//
//  Boundaries.swift
//  chatAssignment
//
//  Created by Lalit on 2016-03-26.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit

class Boundaries: UIButton {

    override func awakeFromNib() {
       
        self.backgroundColor = UIColor.clearColor()
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
}
