//
//  Model.swift
//  chatAssignment
//
//  Created by Lalit on 2016-03-26.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation
class Model {
    
    var imagePath:String?
    var _productName:String?
    
   private var productName:String{
        return _productName!
    }
    init(data:Dictionary<String,String>){
        if let productName = data["productName"] {
            self._productName = productName
            
        }
    }
}