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
            Lecturer(name: "Dr. Chamli Pushpakumara", grade: "Senior Lecturer (Grade I)", email: "chamli@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.-chamli.jpg", phone: ""),
            Lecturer(name: "Dr. Pradeep W. Samarasekere", grade: "Senior Lecturer (Grade II)", email: "pradeeps@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.-pradeep.jpg", phone: ""),
            Lecturer(name: "Dr. Kasun Fernando", grade: "Senior Lecturer (Grade II)", email: "kasunf@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.kasun.jpg", phone: ""),
            Lecturer(name: "Dr. Chanaka Udayanga", grade: "Senior Lecturer (Grade II)", email: "chanakau@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dac/images/2024/09/24/dr.-chanaka.jpg", phone: "")
        ]
        
        self.staffData = StaffData(deptName: "DAC", staffList: self.lectures)
    }
}
