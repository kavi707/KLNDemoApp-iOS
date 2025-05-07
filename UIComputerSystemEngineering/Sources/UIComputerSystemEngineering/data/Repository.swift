//
//  Repository.swift
//  UIAppliedComputing
//
//  Created by Kavimal Wijewardana on 4/28/25.
//
import Foundation
import LibUIParent

public class Repository {
    
    let lectures: [Lecturer]
    public let staffData: StaffData
    
    public init () {
        self.lectures = [
            Lecturer(name: "Dr. Laalitha S. I. Liyanage", grade: "Senior Lecturer (Grade I)", email: "laalitha@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.laalitha.jpg", phone: ""),
            Lecturer(name: "Dr. Chamli Pushpakumara", grade: "Senior Lecturer (Grade I)", email: "chamli@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.-chamli.jpg", phone: "")
        ]
        
        self.staffData = StaffData(deptName: "DAC", staffList: self.lectures)
    }
}
