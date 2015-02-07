//
//  AppDelegate.swift
//  TabBarcontrollerProgramatically
//
//  Created by Henry AT on 2/6/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        var nav1 = UINavigationController()
        nav1.tabBarItem.title = "Primero"
        var tabBarImage = UIImage(named: "bow")
        nav1.tabBarItem.image = tabBarImage
        var PrimerVC = UnoVC(nibName: nil, bundle: nil)
        PrimerVC.view.backgroundColor = UIColor.greenColor()
        PrimerVC.title = "Verde"
        nav1.viewControllers = [PrimerVC]
        
        var nav2 = UINavigationController()
        nav2.tabBarItem.title = "Segundo"
        tabBarImage = UIImage(named: "bear")
        nav2.tabBarItem.image = tabBarImage
        var SegundoVC = DosVC(nibName: nil, bundle: nil)
        SegundoVC.view.backgroundColor = UIColor.orangeColor()
        SegundoVC.title = "Naranja"
        nav2.viewControllers = [SegundoVC]
        
        var nav3 = UINavigationController()
        nav3.tabBarItem.title = "Tercero"
        tabBarImage = UIImage(named: "cogwheel")
        nav3.tabBarItem.image = tabBarImage
        var TerceroVC = TresVC(nibName: nil, bundle: nil)
        TerceroVC.view.backgroundColor = UIColor.blueColor()
        TerceroVC.title = "Azul"
        nav3.viewControllers = [TerceroVC]
        
        var nav4 = UINavigationController()
        nav4.tabBarItem.title = "Cuarto"
        tabBarImage = UIImage(named: "female")
        nav4.tabBarItem.image = tabBarImage
        var CuartoVC = CuatroVC(nibName: nil, bundle: nil)
        CuartoVC.view.backgroundColor = UIColor.redColor()
        CuartoVC.title = "Rojo"
        nav4.viewControllers = [CuartoVC]
        
        var nav5 = UINavigationController()
        nav5.tabBarItem.title = "Quinto"
        tabBarImage = UIImage(named: "gift")
        nav5.tabBarItem.image = tabBarImage
        var QuintoVC = CincoVC(nibName: nil, bundle: nil)
        QuintoVC.view.backgroundColor = UIColor.purpleColor()
        QuintoVC.title = "Lila"
        nav5.viewControllers = [QuintoVC]
        
        var tabs = UITabBarController()
        tabs.viewControllers = [nav1,nav2,nav3,nav4,nav5]
        
        self.window!.rootViewController = tabs;
        self.window?.makeKeyAndVisible();
        
        
        return true
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

