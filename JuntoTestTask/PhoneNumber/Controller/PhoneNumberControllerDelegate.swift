//
//  PhoneNumberControllerDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol PhoneNumberControllerDelegate {
    
    func butLogInTapped(phoneNumber: String)
    func butWithoutAuthTapped()
    func tfPhoneTextChanged(to text: String)
}
