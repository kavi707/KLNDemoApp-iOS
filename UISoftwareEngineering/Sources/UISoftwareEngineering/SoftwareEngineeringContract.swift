//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 4/26/25.
//

import Foundation
import SwiftUI
import LibUIParent

public class SoftwareEngineeringContract: UIModuleContract {
    
    public init() {}
    
    public func getEntryUI(entryData: String?) -> AnyView {
        return AnyView(SEDeptHome())
    }
    
    public func invokeAction(actionName: String) -> String {
        return ""
    }
}
