//
//  AppointmentModel.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 13/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import Foundation
import SwiftyJSON

struct AppointmentModel {
    var dname: String
    var cname: String
    var dage:String
    var cage:String
    var startTime:Date
    var endTime:Date
    var experience:String
    var dAddress:String
    var cAddress:String
    var dEmail:String
    var price:String
    var type:String
    var facilityName:String
    
    init(withAppointment apt:JSON) {
        self.dname = apt["dname"].stringValue
        self.cname = apt["uname"].stringValue
        self.dage = getAge(fromDate: apt["ddob"].stringValue)
        self.cage = getAge(fromDate: apt["udob"].stringValue)
        self.startTime = getDate(fromdate: apt["start_time"].stringValue) ?? Date()
        self.endTime = getDate(fromdate: apt["end_time"].stringValue) ?? Date()
        self.experience = apt["experience"].stringValue
        self.dAddress = apt["daddress"].stringValue
        self.cAddress = apt["uaddress"].stringValue
        self.dEmail = apt["demail"].stringValue
        self.price = apt["price"].stringValue
        self.type = apt["type"].stringValue
        self.facilityName = apt["fname"].stringValue
    }
}
