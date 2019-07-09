//
//  MainController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainController: MainControllerDelegate {
    
    required init(view: MainViewDelegate) {
        self.view = view
        self.model = MainModel()
    }
    
    private var view: MainViewDelegate?
    private var model: MainModelDelegate?
    
    
    @objc func butOnlyAuthTapped() {
        view!.showSuccessAlert()
    }
    
    @objc
    func butLogInOutTapped() {
        if model!.isAuthorized() {
            model!.logOut()
        }
        view!.goToPhoneView()
    }
    
    func viewDidLoad() {
        createButtonLogInOut()
    }
    
    func viewWillAppear() {
        view!.configureButOnlyAuth(active: model!.isAuthorized())
    }
    
    private func createButtonLogInOut() {
        view!.createButtonLogInOut(auth: model!.isAuthorized())
    }
}
