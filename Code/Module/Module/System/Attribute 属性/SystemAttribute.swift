//
//  SystemAttribute.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class SystemAttribute: NSObject {
    
    var attribute: SystemAttributeBase!
    
    override init() {
        super.init()
        
        //起始属性初始话
        let attributeOrigin = SystemAttributeOrigin.init(hp: 20, mp: 20, attack: 7, defense: 7)
        //成长属性初始化
        let attributeGrow = SystemAttributeGrowing.init(hp: 30, mp: 30, attack: 3, defense: 3)
        //等级系统初始化
        let level = SystemAttributeExp.init()
        
        self.attribute = SystemAttributeBase.init(level: level, attributeOrigin: attributeOrigin, attributeGrow: attributeGrow)
        
    }

}
