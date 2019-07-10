//
//  SmsCodeController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class SmsCodeController: SmsCodeControllerDelegate {
    
    
    required init(view: SmsCodeViewDelegate) {
        self.view = view
        self.model = SmsCodeModel(controller: self)
    }
    
    
    private var view: SmsCodeViewDelegate
    private var model: SmsCodeModelDelegate?
    
    
    func codeSentToUser() {
        view.showCodeSentAlert()
    }
    
    func tfCodeTextChanged(to text: String) {
        view.setShowableCode(text)
        
        guard text.count == 5 else { return }
        if model!.checkCode(text) {
            view.goToUserDataView()
        } else {
            view.setRedCodeColor()
            view.clearShowableCode()
        }
    }
    
    func butSendCodeTapped() {
        
    }
    
    func viewDidLoad() {
        model?.sendCode()
    }
    
    func alertOkTapped() {
        view.openKeyboard()
    }
    
}
