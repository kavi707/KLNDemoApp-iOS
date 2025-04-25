//
//  File.swift
//  
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import Foundation
import SwiftUI

public class UINavigator {
    
    public static func navigateToUIModule(moduleName: String, entryData: String?) -> AnyView? {
        return UIModuleRegistry.getModuleRegistry()?.getUIModuleContract(moduleName: moduleName)?.getEntryUI(entryData: entryData) ?? nil
    }
}
