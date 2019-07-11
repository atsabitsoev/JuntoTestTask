//
//  User.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 11/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
    @objc dynamic var phone: String = ""
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
}
