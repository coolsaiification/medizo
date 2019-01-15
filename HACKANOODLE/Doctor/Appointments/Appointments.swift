//
//  Appointments.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 13/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class Appointments: UIViewController {

    var appointments = [AppointmentModel]()
    @IBOutlet weak var appointmentTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        callApi(url: getAppointments, params: ["id":"1"]) { (json) in
            for apt in json.arrayValue{
                self.appointments.append(AppointmentModel(withAppointment: apt))
            }
            self.appointmentTable.reloadData()
        }
    }
}

extension Appointments: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appointments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DoctorAppointmentCell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = appointments[indexPath.row].dname
        return cell
    }
}
