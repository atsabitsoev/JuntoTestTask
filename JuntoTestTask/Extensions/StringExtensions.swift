//
//  StringExtensions.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


extension String {
    
    func onlyNumbers() -> String {
        var newString = ""
        let numberSymbols: Set = ["1","2","3","4","5","6","7","8","9","0"]
        for c in self {
            if numberSymbols.contains("\(c)") {
                newString.append(c)
            }
        }
        return newString
    }
}
