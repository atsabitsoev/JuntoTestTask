//
//  UserDataController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class UserDataController: UserDataControllerDelegate {
    
    
    required init(view: UserDataViewDelegate) {
        self.view = view
        self.model = UserDataModel(controller: self)
    }
    
    
    var view: UserDataViewDelegate
    var model: UserDataModelDelegate?
    
    
    func butSaveTapped(firstName: String?,
                       lastName: String?) {
        
        guard let fn = firstName, fn != "",
            Set(fn) != Set(" "),
            let ln = lastName, ln != "",
            Set(ln) != Set(" ") else {
                view.showErrorAlert()
                return
        }
        
        model?.saveUser(firstName: fn,
                        lastName: ln)
        model?.logIn()
        view.goToMainView()
    }
}
