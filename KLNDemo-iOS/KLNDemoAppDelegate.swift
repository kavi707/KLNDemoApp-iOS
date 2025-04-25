//
//  KLNDemoApp.swift
//  KLNDemo-iOS
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import Foundation
import UIKit
import LibUIParent

@MainActor
class KLNDemoAppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Register all UI modules
        UIModuleConfig().registerUIModules()
        
        return true
    }
}
