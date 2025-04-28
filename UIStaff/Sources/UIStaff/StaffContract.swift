//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 4/28/25.
//

import Foundation
import SwiftUI
import LibUIParent

public class StaffContract: UIModuleContract {
    
    public init() {}
    
    public func getEntryUI(entryData: String?) -> AnyView {
        return AnyView(StaffListView())
    }
    
    public func invokeAction(actionName: String) -> String {
        return ""
    }
}
