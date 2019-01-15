//
//  MedicineVC.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 13/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit

class MedicineVC: UIViewController {

    @IBOutlet weak var medicineTable: UITableView!
    var medicines = [Medicine]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        medicines.append(Medicine(name: "Crocin"))
    }

}

extension MedicineVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicines.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MedicineCell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = medicines[indexPath.row].name
        return cell
    }
    
}
