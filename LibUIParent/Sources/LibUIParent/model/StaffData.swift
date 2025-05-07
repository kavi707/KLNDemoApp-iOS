//
//  File.swift
//  LibUIParent
//
//  Created by Kavimal Wijewardana on 5/6/25.
//

import Foundation

public struct StaffData: Codable {
    public var deptName: String
    public var staffList: [Lecturer]
    
    public init(deptName: String, staffList: [Lecturer]) {
        self.deptName = deptName
        self.staffList = staffList
    }
}
