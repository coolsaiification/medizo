//
//  CollectionReference.swift
//  HACKANOODLE
//
//  Created by Srijan Garg on 12/01/19.
//  Copyright © 2019 Srijan Garg. All rights reserved.
//

import Foundation
import FirebaseFirestore


enum FCollectionReference: String {
    case Patient
    case Doctor
    case Appointments
}


func reference(_ collectionReference: FCollectionReference) -> CollectionReference{
    return Firestore.firestore().collection(collectionReference.rawValue)
}

