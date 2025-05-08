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
            Lecturer(name: "Dr. S. P. Kasthuri Arachchi", grade: "Senior Lecturer (Grade II) in Computer Science", email: "sandelik@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dse/images/2024/12/30/dr.-sandali-2.jpg", phone: ""),
            Lecturer(name: "Dr. Gamini Wijayarathna", grade: "Senior Lecturer (Grade I) in Computer Science", email: "gamini@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dse/images/2023/08/29/dr.-gamini-wijayarathna.jpg", phone: ""),
            Lecturer(name: "Dr. (Mrs.) M. C. Wijegunasekara", grade: "Senior Lecturer (Grade I) in Computer Science", email: "carmel@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dse/images/2024/09/25/dr.-m.-c.wijegunasekara.jpg", phone: ""),
            Lecturer(name: "Prof. S. R. Liyanage", grade: "Professor in Computer Science", email: "sidath@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dse/images/2024/09/25/dr.-s.-r.liyanage.jpg", phone: ""),
            Lecturer(name: "Dr. Mohamed Ishan Sabar", grade: "Senior Lecturer (Grade I) in Computer Science", email: "ishans@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dse/images/2024/09/25/dr.-mohamed-ishan-sabar.jpg", phone: "")
        ]
        
        self.staffData = StaffData(deptName: "DSE", staffList: self.lectures)
    }
}
