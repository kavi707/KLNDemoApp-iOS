//
//  File.swift
//  
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import Foundation

public class UIModuleRegistry {
    
    nonisolated(unsafe) static var uiModuleRegistry: UIModuleRegistry?
    var moduleRegistry = [String: any UIModuleContract]()
    
    public static func getModuleRegistry() -> UIModuleRegistry? {
        if (uiModuleRegistry == nil) {
            uiModuleRegistry = UIModuleRegistry()
        }
        return uiModuleRegistry
    }
    
    public func registerUIModule(moduleName: String, moduleContract: UIModuleContract) {
        moduleRegistry[moduleName] = moduleContract
    }
    
    public func getUIModuleContract(moduleName: String) -> (any UIModuleContract)? {
        return moduleRegistry[moduleName] ?? nil
    }
}
