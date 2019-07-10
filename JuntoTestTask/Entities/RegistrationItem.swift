//
//  RegistrationItem.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class RegistrationItem {
    
    
    private init() {}
    static let standard = RegistrationItem()
    
    
    var phone: String?
    
    
    func clearItem() {
        self.phone = nil
    }
}
