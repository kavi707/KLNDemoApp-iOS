//
//  KLNDemo_iOSApp.swift
//  KLNDemo-iOS
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import SwiftUI
import SwiftData
import LibUIParent

@main
struct KLNDemo_iOSApp: App {
    
    @UIApplicationDelegateAdaptor(KLNDemoAppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            UINavigator.navigateToUIModule(moduleName: "DASHBOARD", entryData: nil)
        }
    }
}
