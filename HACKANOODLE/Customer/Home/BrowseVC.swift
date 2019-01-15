//
//  BrowseVC.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class BrowseVC: UIViewController {

    @IBOutlet weak var doctorTable: UITableView!
    var doctors = [Doctor]()
    override func viewDidLoad() {
        super.viewDidLoad()
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
    }

    @IBAction func search(_ sender: UITextField) {
        doctorTable.reloadData()
    }
    
}

extension BrowseVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(doctors.count)
        return doctors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DoctorCell") as? DoctorCell else{ return UITableViewCell()}
        cell.configureCell(withDoctor: doctors[indexPath.row])
        return cell
    }
}
