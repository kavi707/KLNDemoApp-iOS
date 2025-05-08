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
            Lecturer(name: "Snr.Prof. N. G. J.Dias", grade: "Senior Professor in Computer Science - Head / Department of Computer Systems Engineering", email: "ngjdias@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dcse/images/2024/09/25/prof.-n.-g.-j.dias.jpg", phone: ""),
            Lecturer(name: "Prof. Dhammika Weerasinghe", grade: "Professor in Computer Science - Dean / Faculty of Computing and Technology", email: "hesiri@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dcse/images/2025/02/10/prof.dhammika4.jpg", phone: ""),
            Lecturer(name: "Dr. Rasika Rajapaksha", grade: "Senior Lecturer (Grade II) in Applied Mathematics and Data science", email: "rasikar@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dcse/images/2024/09/25/dr.-rasika.jpg", phone: ""),
            Lecturer(name: "Dr.Madusha Chandrasena", grade: "Senior Lecturer (Grade II) in Mathematics", email: "madushac@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dcse/images/2025/01/02/dr.madusha-2.jpg", phone: ""),
            Lecturer(name: "Dr.N. Mekhala Hakmanage", grade: "Lecturer", email: "navodim@kln.ac.lk", imageUrl: "https://fct.kln.ac.lk/dep/dcse/images/2024/09/25/dr.n.-mekhala.jpg", phone: "")
        ]
        
        self.staffData = StaffData(deptName: "DCSE", staffList: self.lectures)
    }
}
