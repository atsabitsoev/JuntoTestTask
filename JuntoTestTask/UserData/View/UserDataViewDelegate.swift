//
//  UserDataViewDelegate.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


protocol UserDataViewDelegate {
    
    
    func goToMainView()
    func showErrorAlert()
    func addTapRecognizer()
    func hideKeyboard()
    func setDelegates()
}
