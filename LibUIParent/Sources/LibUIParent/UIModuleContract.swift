//
//  File.swift
//  
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import Foundation
import SwiftUI

public protocol UIModuleContract {
    func getEntryUI(entryData: String?) -> AnyView
    func invokeAction(actionName: String) -> String
}
