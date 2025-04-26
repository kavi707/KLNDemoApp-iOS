//
//  UIModuleConfig.swift
//  survey-ios-app
//
//  Created by Kavimal Wijewardana on 8/29/23.
//

import Foundation
import LibUIParent
import UIDashboard
import UIAppliedComputing
import UISoftwareEngineering
import UIComputerSystemEngineering

class UIModuleConfig {

    var uiModuleRegistry = UIModuleRegistry.getModuleRegistry()

    func registerUIModules() {
        uiModuleRegistry?.registerUIModule(moduleName: "DASHBOARD", moduleContract: DashboardContract())
        uiModuleRegistry?.registerUIModule(moduleName: "APPLIED_COMPUTING", moduleContract: AppliedComputingDeptContract())
        uiModuleRegistry?.registerUIModule(moduleName: "SOFTWARE_ENGINEERING", moduleContract: SoftwareEngineeringContract())
        uiModuleRegistry?.registerUIModule(moduleName: "COMPUTER_SYSTEM", moduleContract: ComputerSystemEngineeringContract())
    }
}
