//
//  Constants.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

// Patient
let url = "http://localhost:5000/"
let getUserInfo = url+"user/profile/getInfo"
let getDocInfo = url+"doctor/profile/getInfo"
let getAppointments = url+"doctor/profile/getAppointments"
let getUserAppointments = url+"users/profile/getAppointments"

public func getAge(fromDate str:String) -> String{
    var x = Int(Calendar.current.component(.year, from: Date()))
    let index = str.index(str.startIndex, offsetBy: 4)
    let mySubstring = str[..<index]
    x  = x - (Int(mySubstring) ?? 0);
    return String(x)
}

public func getDate(fromdate str:String)->Date?{
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-ddTHH:mm:ss.pppZ"
    return formatter.date(from: str)
}
