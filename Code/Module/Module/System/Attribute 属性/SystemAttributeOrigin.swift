//
//  SystemAttributeOrigin.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class SystemAttributeOrigin: NSObject {

    
    var hp: Float = 0
    
    var mp: Float = 0
    
    var attack: Float = 0
    
    var defense: Float = 0
    
    init(hp: Float, mp: Float, attack: Float, defense: Float) {
        self.hp = hp
        self.mp = mp
        self.attack = attack
        self.defense = defense
    }
}
