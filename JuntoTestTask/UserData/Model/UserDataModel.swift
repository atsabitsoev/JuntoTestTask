//
//  UserDataModel.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class UserDataModel: UserDataModelDelegate {
    
    
    required init(controller: UserDataControllerDelegate) {
        self.controller = controller
    }
    
    
    var controller: UserDataControllerDelegate
    
    
    func saveUser(firstName: String, lastName: String) {
        DBService.registerUser(phone: RegistrationItem.standard.phone!,
                                   firstName: firstName,
                                   lastName: lastName)
    }
    
    func logIn() {
        UserDefaults.standard.set(true,
                                  forKey: "isAuthorized")
    }
    
    
}
