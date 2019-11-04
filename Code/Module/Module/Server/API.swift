//
//  API.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

struct API {

    struct Cus {
        
        static var base = "cus"
        struct User {
            static var base = Cus.base + "/" + "user"
            
            static var login = User.base + "/" + "loginByMobileOrEmail"
        }
    }
    
}
