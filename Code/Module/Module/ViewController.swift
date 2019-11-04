//
//  ViewController.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit
import Log

class ViewController: UIViewController {
    
    var hero: SystemAttribute?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.hero = SystemAttribute.init()
    
        let btn = UIButton.init(frame: CGRect.init(x: 30, y: 70, width: 60, height: 40))
        btn.setTitle("Level", for: .normal)
        btn.backgroundColor = .systemPink
        btn.addTarget(self, action: #selector(btnClick(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    
    @objc func btnClick(_ sender: UIButton) {
        self.hero?.attribute.level?.gainExp(exp: 500, levelUp: { (exp, level, isLevelUp) in

            if isLevelUp {
                self.hero?.attribute.levelUp(level: level)
                Log.Info(["升级啦，当前\(level)级", (self.hero?.attribute.level!.rate)!])
                Log.Info([self.hero?.attribute.attack, self.hero?.attribute.defense, self.hero?.attribute.hp, self.hero?.attribute.mp])
            } else {
                Log.Info(["Exp+\(Int(exp))", (self.hero?.attribute.level!.rate)!])
            }
        })
    }


}

