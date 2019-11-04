//
//  AppDelegate.swift
//  Module
//
//  Created by Neal on 2019/11/4.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit
import Log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        LibLog.INIT()
        
        Log.Trace(["":""])
        
        Log.Info(["","",""])
        
        Log.Error(123, "a", ["",""])
        
        Log.Api(api: "/user/login", method: .POST, process: .Request, items: ["username":"131", "passcode":"123"])
        
        Log.Api(api: "/user/login", method: .POST, process: .Response, items: ["code":"0", "msg":"success"], level: .Error)
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    


}

