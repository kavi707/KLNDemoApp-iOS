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
        guard let staffDataString = entryData else { return AnyView(EmptyView()) }
        let givenStaffData = DataUtil.getObjectFromJSONString(jsonString: staffDataString, dataType: StaffData.self)
        
        return AnyView(StaffListView(staffData: givenStaffData!))
    }
    
    public func invokeAction(actionName: String) -> String {
        return ""
    }
}
