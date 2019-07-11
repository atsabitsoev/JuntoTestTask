//
//  UserDataControllerDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


@objc
protocol UserDataControllerDelegate {
    
    
    func butSaveTapped(firstName: String?,
                       lastName: String?)
    func viewDidLoad()
    @objc func viewTapped()
}
