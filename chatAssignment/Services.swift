//
//  Services.swift
//  chatAssignment
//
//  Created by Lalit on 2016-03-26.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation
import Firebase

let URL_BASE = Firebase(url:"https://demochat2x.firebaseio.com/")
class Services{
    
    static let ds = Services()
    private var _REF_BASE = Firebase(url: "\(URL_BASE)")
    private var _REF_USERS = Firebase(url: "\(URL_BASE)/users")
    
    let User = "lait"
    
    var REF_BASE:Firebase{
        return _REF_BASE
    }
    var REF_USERS:Firebase{
        return _REF_USERS
    }


}
