//
//  MainModel.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainModel: MainModelDelegate {
    
    func logOut() {
        UserDefaults.standard.set(false, forKey: "isAuthorized")
        goToPhoneView()
    }
    
    func goToPhoneView() {
        print("goToPhoneView")
    }
    
    func isAuthorized() -> Bool {
        return UserDefaults.standard.bool(forKey: "isAuthorized")
    }
}
