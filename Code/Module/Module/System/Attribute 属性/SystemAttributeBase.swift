//
//  SystemAttributeBase.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class SystemAttributeBase: NSObject {
    
    var hp: Float = 0
    
    var mp: Float = 0
    
    var attack: Float = 0
    
    var defense: Float = 0
    
    var attributeGrow: SystemAttributeGrowing?
    
    var attributeOrigin: SystemAttributeOrigin?
    
    var level: SystemAttributeExp?
    
    func levelUp(level: Int) {
  
        self.hp = self.attributeOrigin!.hp + self.attributeGrow!.hp * Float(level)
        
        self.mp = self.attributeOrigin!.mp + self.attributeGrow!.mp * Float(level)
        
        self.attack = self.attributeOrigin!.attack + self.attributeGrow!.attack * Float(level)
        
        self.defense = self.attributeOrigin!.defense + self.attributeGrow!.defense * Float(level)
    }
    
    init(level: SystemAttributeExp, attributeOrigin: SystemAttributeOrigin, attributeGrow: SystemAttributeGrowing) {
        
        self.attributeOrigin = attributeOrigin
        
        self.attributeGrow = attributeGrow
        
        self.level = level
        
        self.hp = self.attributeOrigin!.hp + self.attributeGrow!.hp * Float(level.level)
        
        self.mp = self.attributeOrigin!.mp + self.attributeGrow!.mp * Float(level.level)
        
        self.attack = self.attributeOrigin!.attack + self.attributeGrow!.attack * Float(level.level)
        
        self.defense = self.attributeOrigin!.defense + self.attributeGrow!.defense * Float(level.level)
        
   
    }

    
}
