//
//  AppDelegate.swift
//  DialogAppearExample
//
//  Created by 沈玉霏 on 2016/11/22.
//  Copyright © 2016年 syu. All rights reserved.
//

import UIKit

// 切换控制器通知
let XMGSwitchRootViewControllerKey = "XMGSwitchRootViewControllerKey"
let SYSwitchRootViewControllerKeyLogin = "SYSwitchRootViewControllerKeyLogin"


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**
         I just call the beginning of this method, then there will be problems, IOS10 on the issue, IOS9 no problem.
         */
        defaultController()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(AppDelegate.switchRootViewController(_:)), name: XMGSwitchRootViewControllerKey, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(AppDelegate.switchRootViewControllerLogin(_:)), name: SYSwitchRootViewControllerKeyLogin, object: nil)
        
       
        return true
    }
    
    func switchRootViewController(notify: NSNotification){
        //        print(notify.object)
        //            window?.rootViewController = MainViewController()
        // 1.创建window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("main")
        // 2.创建根控制器
        //        let nav = CusNavigationController(rootViewController: MainViewController())
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
    
    
    
    func switchRootViewControllerLogin(notify: NSNotification){
        let sb = UIStoryboard(name: "loginVC", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("loginVC")
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        // 2.创建根控制器
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
    
    
    func defaultController(){
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("main")
        // 2.创建根控制器
        //        let nav = CusNavigationController(rootViewController: MainViewController())
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

