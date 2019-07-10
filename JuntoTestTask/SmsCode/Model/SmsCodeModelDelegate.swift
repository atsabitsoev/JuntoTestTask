//
//  SmsCodeModelDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol SmsCodeModelDelegate {
    
    func checkCode(_ code: String) -> Bool
    func sendCode()
    func startTimer()
}
