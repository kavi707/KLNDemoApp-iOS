//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import Foundation
import SwiftUI
import LibUIParent

public class DashboardContract: UIModuleContract {
    
    public init() {}
    
    public func getEntryUI(entryData: String?) -> AnyView {
        return AnyView(DasboardTabView())
    }
    
    public func invokeAction(actionName: String) -> String {
        return ""
    }
}

