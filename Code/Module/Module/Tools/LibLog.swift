//
//  LibLog.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit


class LibLog: NSObject {
    
    class func INIT() {
        #if DEBUG
        Log.open = .Open
        #else
        Log.open = .Close
        #endif
    }

}
