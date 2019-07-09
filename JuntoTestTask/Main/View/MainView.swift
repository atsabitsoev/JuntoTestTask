//
//  ViewController.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class MainView: UIViewController {
    
    
    private var controller: MainController!
    
    
    @IBOutlet weak var butOnlyAuth: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        controller.viewDidLoad()
    }
    
    
    private func configureView() {
        self.controller = MainController(view: self)
    }
    
    
    func createButtonLogInOut(text: String, selector: Selector) {
        let item = UIBarButtonItem(barButtonSystemItem: .action,
                                   target: self,
                                   action: selector)
        self.navigationItem.setLeftBarButtonItems([item],
                                                  animated: false)
    }


}

