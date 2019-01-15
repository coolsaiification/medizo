//
//  MyDoctorsVC.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class MyDoctorsVC: UIViewController {

    @IBOutlet weak var myDoctors: UICollectionView!
    @IBOutlet weak var favoriteDoctorsTable: UITableView!
    @IBOutlet weak var appointmentTable: UITableView!
    var doctors = [Doctor]()
    var favDocs = [Doctor]()
    var appointments = [AppointmentModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        doctors.append(Doctor(name: "Sai", experience: "2 years", degree: "MBBS", specialization: "Neurology"))
        // Todo : map to favorite doctors
        favDocs = doctors
        myDoctors.reloadData()
        favoriteDoctorsTable.reloadData()
        
        callApi(url: getUserAppointments, params: ["id":"1"]) { (json) in
            for apt in json.arrayValue{
                self.appointments.append(AppointmentModel(withAppointment: apt))
            }
            self.appointmentTable.reloadData()
        }
    }

}

extension MyDoctorsVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doctors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DoctorCollectionCell", for: indexPath) as? DoctorCollectionCell else {return UICollectionViewCell()}
        cell.configureCell(withDoctor: doctors[indexPath.row])
        return cell
    }
}

extension MyDoctorsVC:UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == favoriteDoctorsTable{
            return favDocs.count
        }else if tableView == appointmentTable{
            return appointments.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == favoriteDoctorsTable {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteDoctorCell")
                else{ return UITableViewCell()}
            cell.textLabel?.text = favDocs[indexPath.row].name
            return cell
        }else if tableView == appointmentTable {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "appointmentsCell") else {return UITableViewCell()}
            cell.textLabel?.text = "Appointment " + String(indexPath.row+1)
            return cell
        }
        return UITableViewCell()
    }
}
