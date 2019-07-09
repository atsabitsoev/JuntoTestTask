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
        let model = MainModel()
        self.controller = MainController(view: self,
                                         model: model)
    }
    
    
    func createButtonLogInOut(text: String) {
        let item = UIBarButtonItem(title: text,
                                   style: .plain,
                                   target: controller,
                                   action: #selector(controller!.butLogInOutTapped))
        self.navigationItem.setLeftBarButtonItems([item],
                                                  animated: false)
    }
    
    func configureButOnlyAuth() {
        butOnlyAuth.setTitle("Совершить действие, доступное только после авторизации",
                             for: .normal)
        butOnlyAuth.titleLabel?.numberOfLines = 0
        butOnlyAuth.layer.cornerRadius = 8
        butOnlyAuth.clipsToBounds = true
    }

}

