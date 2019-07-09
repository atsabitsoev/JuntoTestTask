//
//  ViewController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class MainView: UIViewController, MainViewDelegate {
    
    
    private var controller: MainControllerDelegate?
    
    
    @IBOutlet weak var butOnlyAuth: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        controller!.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        controller!.viewWillAppear()
    }
    
    
    private func configureView() {
        self.controller = MainController(view: self)
    }
    
    
    func createButtonLogInOut(auth: Bool) {
        
        let text = auth ? "Выйти" : "Войти"
        let item = UIBarButtonItem(title: text,
                                   style: .plain,
                                   target: controller,
                                   action: #selector(controller!.butLogInOutTapped))
        self.navigationItem.setLeftBarButtonItems([item],
                                                  animated: false)
    }
    
    func configureButOnlyAuth(active: Bool) {
        
        butOnlyAuth.alpha = active ? 1 : 0.5
        butOnlyAuth.isUserInteractionEnabled = active
        
        butOnlyAuth.setTitle("Совершить действие, доступное только после авторизации",
                             for: .normal)
        butOnlyAuth.titleLabel?.numberOfLines = 0
        butOnlyAuth.layer.cornerRadius = 8
        butOnlyAuth.clipsToBounds = true
        
        butOnlyAuth.addTarget(controller,
                              action: #selector(controller!.butOnlyAuthTapped),
                              for: .touchUpInside)
    }
    
    func showSuccessAlert() {
        
        let alert = UIAlertController(title: "Успех",
                                      message: "Вы выполнили действие, доступное только авторизованным пользователям",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ура",
                                     style: .default,
                                     handler: nil)
        alert.addAction(okAction)
        self.present(alert,
                     animated: true,
                     completion: nil)
    }

}

