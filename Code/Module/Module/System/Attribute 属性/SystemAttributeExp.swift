//
//  SystemAttributeExp.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class SystemAttributeExp: NSObject {

    var exp: Float = 0
    
    var rate: Int = 0
    
    var expRequest: Float = 0
    
    var level: Int = 1
    
    override init() {
        super.init()
        ExpCoefficient.loadEff()
        
        self.level = 1
        
        let expGiven = 1 + self.level * (level - 1) / 2
        let expEff = ExpCoefficient.list[self.level - 1]
        self.expRequest = pow(Float(expGiven) * expEff * 0.6, 1.1)

    }
    
    func gainExp(exp: Float, levelUp: (Float, Int, Bool) -> ()) {
        self.exp = self.exp + exp
        
        if Int(self.exp) >= Int(expRequest) {
            
            self.level = self.level + 1
            self.exp = self.exp - self.expRequest
            
            let expGiven = 1 + self.level * (self.level - 1) / 2
            let expEff = ExpCoefficient.list[self.level - 1]
            self.expRequest = pow(Float(expGiven) * expEff * 0.6, 1.1)
            self.rate = Int(self.exp * 100 / self.expRequest)
            levelUp(exp, level, true)
        } else {
            self.rate = Int(self.exp * 100 / self.expRequest)
            levelUp(exp, level, false)
        }
        
        
    }
    
    struct ExpCoefficient {
        static var list: [Float] = [10]
        
        static func loadEff() {
            for n in 1..<101 {
                let effLast = self.list[n - 1]
                let eff = pow((effLast + 5 * Float(n)), Float(0.85)) * 2
                self.list.append(eff)
            }
        
        }
    }
}


