//
//  UserDataModelDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol UserDataModelDelegate {
    
    
    func saveUser(firstName: String,
                  lastName: String)
    func logIn()
}
