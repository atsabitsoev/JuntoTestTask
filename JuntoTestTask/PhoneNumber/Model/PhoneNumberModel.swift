//
//  PhoneNumberModel.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import PhoneNumberKit


class PhoneNumberModel: PhoneNumberModelDelegate {
    
    
    func goToMain() {
        
    }
    
    func temporarySaveNumber() {
        
    }
    
    func goToSmsCode() {
        
    }
    
    func checkPhone(_ phone: String) -> Bool {
        guard (try? PhoneNumberKit().parse(phone)) != nil else {
            return false
        }
        return true
    }
}
