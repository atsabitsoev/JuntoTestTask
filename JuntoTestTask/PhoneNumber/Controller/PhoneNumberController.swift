//
//  PhoneNumberController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class PhoneNumberController: PhoneNumberControllerDelegate {
    
    
    required init(view: PhoneNumberViewDelegate) {
        self.view = view
        self.model = PhoneNumberModel()
    }
    
    private var view: PhoneNumberViewDelegate
    private var model: PhoneNumberModelDelegate
    
    
    var timer: Timer?
    
    
    func butLogInTapped() {
        model.temporarySaveNumber()
        model.goToSmsCode()
    }
    
    func butWithoutAuthTapped() {
        model.goToMain()
    }
    
    func tfPhoneTextChanged(to text: String) {
        
        if timer != nil {
            timer?.invalidate()
        }
        timer = nil
        timer = Timer.scheduledTimer(withTimeInterval: 0.3,
                                     repeats: false,
                                     block: { (timer) in
            
            let isNumberValid = self.model.checkPhone(text)
            self.view.activateButLogIn(activate: isNumberValid)
        })
    }
}
