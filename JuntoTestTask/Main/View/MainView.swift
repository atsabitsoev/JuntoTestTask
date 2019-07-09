//
//  ViewController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class MainView: UIViewController, MainViewDelegate {
    
    
    private var controller: MainControllerDelegate!
    
    
    @IBOutlet weak var butOnlyAuth: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        controller.viewDidLoad()
    }
    
    
    private func configureView() {
        let model = MainModel()
        self.controller = MainController(view: self,
                                         model: model)
    }
    
    
    func createButtonLogInOut(text: String, selector: Selector) {
        let item = UIBarButtonItem(barButtonSystemItem: .action,
                                   target: self,
                                   action: selector)
        self.navigationItem.setLeftBarButtonItems([item],
                                                  animated: false)
    }


}

