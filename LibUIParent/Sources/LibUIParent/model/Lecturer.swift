//
//  File.swift
//  LibUIParent
//
//  Created by Kavimal Wijewardana on 5/6/25.
//

import Foundation

public struct Lecturer: Codable, Identifiable {
    public var id: String
    public var name: String
    public var grade: String
    public var email: String
    public var imageUrl: String
    public var phone: String
    
    public init(name: String, grade: String, email: String, imageUrl: String, phone: String) {
        self.id = UUID().uuidString
        self.name = name
        self.grade = grade
        self.email = email
        self.imageUrl = imageUrl
        self.phone = phone
    }
}
