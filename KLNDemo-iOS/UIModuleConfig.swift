//
//  UIModuleConfig.swift
//  survey-ios-app
//
//  Created by Kavimal Wijewardana on 8/29/23.
//

import Foundation
import LibUIParent
import UIDashboard

class UIModuleConfig {

    var uiModuleRegistry = UIModuleRegistry.getModuleRegistry()

    func registerUIModules() {
        uiModuleRegistry?.registerUIModule(moduleName: "DASHBOARD", moduleContract: DashboardContract())
    }
}
