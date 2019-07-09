//
//  MainController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainController: MainControllerDelegate {
    
    required init(view: MainViewDelegate,
                  model: MainModelDelegate) {
        self.view = view
        self.model = model
    }
    
    private weak var view: MainViewDelegate?
    private weak var model: MainModelDelegate?
    
    
    func butOnlyAuthTapped() {
        
    }
    
    func butLogInOutTapped() {
        
    }
    
    func viewDidLoad() {
        createButtonLogInOut()
    }
    
    private func createButtonLogInOut() {
        switch model!.isAuthorized() {
        case true:
            view?.createButtonLogInOut(text: "Выйти", selector: <#T##Selector#>)
        case false:
            view?.createButtonLogInOut(text: "Войти", selector: <#T##Selector#>)
        }
    }
}
