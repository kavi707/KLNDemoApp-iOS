//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 4/28/25.
//

import Foundation
import SwiftUI
import LibUIParent

public class StaffContract: @preconcurrency UIModuleContract {
    
    public init() {}
    
    @MainActor public func getEntryUI(entryData: String?) -> AnyView {
        return AnyView(StaffListView())
    }
    
    public func invokeAction(actionName: String) -> String {
        return ""
    }
}
