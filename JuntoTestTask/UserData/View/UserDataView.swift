//
//  UserDataView.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class UserDataView: UIViewController, UserDataViewDelegate {
    
    
    var controller: UserDataControllerDelegate?
    
    
    @IBOutlet weak var tfFitstName: UITextField!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var butSave: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    
    private func configureView() {
        self.controller = UserDataController(view: self)
    }
    
    
    func goToMainView() {
        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "MainNav")
        self.navigationController?.present(mainView,
                                           animated: true,
                                           completion: nil)
    }
    
    func activateButSave(_ activate: Bool) {
        
        butSave.alpha = activate ? 1 : 0.5
        butSave.isUserInteractionEnabled = activate
    }
    
    
    func showErrorAlert() {
        let alert = UIAlertController(title: "Ошибка",
                                      message: "Заполните все поля!",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок",
                                     style: .default,
                                     handler: nil)
        alert.addAction(okAction)
        self.present(alert,
                     animated: true,
                     completion: nil)
    }

    
    @IBAction func butSaveTapped(_ sender: UIButton) {
        controller?.butSaveTapped(firstName: tfFitstName.text,
                                  lastName: tfLastName.text)
    }
    
    
}
