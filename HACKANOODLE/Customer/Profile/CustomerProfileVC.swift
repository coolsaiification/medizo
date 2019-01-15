//
//  CustomerProfileVC.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 13/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class CustomerProfileVC: UITableViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var address: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callApi(url: getUserInfo, params: ["id" : "1"]) { (json) in
            print(json)
            self.name.text = json["name"].stringValue
            self.age.text = getAge(fromDate: json["dob"].stringValue)
            self.address.text = json["address"].stringValue
            self.tableView.reloadData()
        }
        
        
    }


}
