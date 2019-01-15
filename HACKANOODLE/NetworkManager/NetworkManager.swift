//
//  NetworkManager.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 13/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public func callApi(url: String, params: [String:Any],handler: @escaping (JSON) -> Void) {
    Alamofire.request(url, method: .post, parameters: ["id": "1"],encoding: JSONEncoding.default, headers: nil).responseJSON {
        response in
        switch response.result {
        case .success:
            handler(JSON(response.result.value!))
            break
        case .failure(let error):
            
            print(error)
        }
    }
}
