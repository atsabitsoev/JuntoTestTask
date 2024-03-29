//
//  MainViewDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol MainViewDelegate: class {
    
    func createButtonLogInOut(auth: Bool)
    func configureButOnlyAuth(active: Bool)
    func showSuccessAlert()
    func goToPhoneView()
}
