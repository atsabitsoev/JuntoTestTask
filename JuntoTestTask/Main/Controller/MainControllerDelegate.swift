//
//  MainControllerDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation

@objc
protocol MainControllerDelegate: class {
    
    
    func butOnlyAuthTapped()
    @objc func butLogInOutTapped()
    func viewDidLoad()
    func viewWillAppear()
}
