//
//  SmsCodeControllerDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol SmsCodeControllerDelegate {
    
    
    func codeSentToUser()
    func tfCodeTextChanged(to text: String)
    func butSendCodeTapped()
    func viewDidLoad()
    func alertOkTapped()
    func timerEnded()
    func secondsRestDidSet(_ secondsRest: Int)
}
