//
//  SQLiteService.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import Realm
import RealmSwift


class DBService {
    
    private init() {}
    static let standard = DBService()
    
    
    private let realm = try! Realm()
    
    
    func isUserRegistered(phone: String) -> Bool {
        
        let users = realm.objects(User.self)
        let newUsers = users.filter { (user) -> Bool in
            let isEqual = user.phone == phone
            return isEqual
        }
        if newUsers.count > 0 {
            return true
        } else {
            return false
        }
    }
    
    func registerUser(phone: String,
                      firstName: String,
                      lastName: String) {
        
        let user = User()
        user.phone = phone
        user.firstName = firstName
        user.lastName = lastName
        
        try! realm.write {
            realm.add(user)
        }
    }
}
