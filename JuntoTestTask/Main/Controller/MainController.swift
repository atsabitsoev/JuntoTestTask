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
    
    private var view: MainViewDelegate?
    private var model: MainModelDelegate?
    
    
    func butOnlyAuthTapped() {
        
    }
    
    @objc
    func butLogInOutTapped() {
        print("tap")
    }
    
    func viewDidLoad() {
        createButtonLogInOut()
    }
    
    func viewWillAppear() {
        view!.configureButOnlyAuth()
    }
    
    private func createButtonLogInOut() {
        switch model!.isAuthorized() {
        case true:
            view?.createButtonLogInOut(text: "Выйти")
        case false:
            view?.createButtonLogInOut(text: "Войти")
        }
    }
}
