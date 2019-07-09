//
//  PhoneNumberModelDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol PhoneNumberModelDelegate {
    
    
    func clearItem()
    func temporarySaveNumber(_ phone: String)
    func checkPhone(_ phone: String) -> Bool
}
