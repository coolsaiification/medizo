//
//  DoctorCell.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class DoctorCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var experienceLbl: UILabel!
    @IBOutlet weak var degreeLbl: UILabel!
    @IBOutlet weak var specializationLbl: UILabel!

    func configureCell(withDoctor doctor: Doctor){
        nameLbl.text = doctor.name
        experienceLbl.text = doctor.experience
        degreeLbl.text = doctor.degree
        specializationLbl.text = doctor.specialization
    }

}
