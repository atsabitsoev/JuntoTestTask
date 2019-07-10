//
//  SmsCodeViewDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol SmsCodeViewDelegate {
    
    func goToUserDataView()
    func goToMainView()
    func setShowableCode(_ code: String)
    func clearShowableCode()
    func setRedCodeColor()
    func showCodeSentAlert()
    func openKeyboard()
    func activateButSendCode(_ activate: Bool)
    func setTextToButSendCode(_ text: String )
}
