//
//  SQLiteService.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class DBService {
    
    
    static func isUserRegistered(phone: String) -> Bool {
        return false
    }
    
    static func registerUser(phone: String,
                             firstName: String,
                             lastName: String) {
        
        do {
            let db = try Connection("path/to/db.sqlite3")
            
            let users = Table("users")
            let id = Expression<Int64>("id")
            let name = Expression<String?>("name")
            let email = Expression<String>("email")
            
            try db.run(users.create { t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(email, unique: true)
            })
        } catch {
            print(error.localizedDescription)
        }
    }
}
