//
//  DoctorCollectionCell.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class DoctorCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var doctorImg: UIImageView!
    
    func configureCell(withDoctor doctor: Doctor){
        nameLbl.text = doctor.name
    }

}
