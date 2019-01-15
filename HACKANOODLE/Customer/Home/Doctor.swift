//
//  Doctor.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import Foundation

struct Doctor {
    var name: String
    var experience: String
    var degree: String
    var specialization: String
    
    init(name: String, experience: String, degree: String, specialization: String) {
        self.name = name
        self.experience = experience
        self.degree = degree
        self.specialization = specialization
    }
}
