//
//  UserDataTFDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 11/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit


extension UserDataView: UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
