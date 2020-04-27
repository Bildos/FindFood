//
//  AppDelegate.swift
//  FindFood
//
//  Created by Андрей on 4/25/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        
        
        let rootViewController = MainViewController()
        let secondViewController = SecondViewController()
        
        let barcode = UITabBarItem()
        barcode.title = "Сканер"
        barcode.image = UIImage(named: "barcode")
        rootViewController.tabBarItem = barcode
        
        let info = UITabBarItem()
        info.title = "Информация о продукте"
        info.image = UIImage(systemName: "info.circle")
        secondViewController.tabBarItem = info
        
        let tabBarContoller = UITabBarController()
        tabBarContoller.viewControllers = [rootViewController, secondViewController]
        window?.rootViewController = tabBarContoller
        
        return true
    }

  


}

