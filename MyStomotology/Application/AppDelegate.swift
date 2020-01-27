//
//  AppDelegate.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 22.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Подключаем ключи апи гугл карт и локаций
        GMSServices.provideAPIKey("AIzaSyDZARmmMu8nnyW5SP3XeeASajhd08QK4q4")
        GMSPlacesClient.provideAPIKey("AIzaSyDZARmmMu8nnyW5SP3XeeASajhd08QK4q4")
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = MapView()
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }
}

