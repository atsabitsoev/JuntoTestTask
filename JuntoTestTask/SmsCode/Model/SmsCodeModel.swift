//
//  SmsCodeModel.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class SmsCodeModel: SmsCodeModelDelegate {
    
    
    required init(controller: SmsCodeControllerDelegate) {
        self.controller = controller
    }
    
    
    var controller: SmsCodeControllerDelegate
    
    
    func checkCode(_ code: String) -> Bool {
        guard code == "11111" else { return false }
        return true
    }
    
    func sendCode() {
        controller.codeSentToUser()
    }
}
