//
//  PhoneNumberView.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 09/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit
import PhoneNumberKit

class PhoneNumberView: UIViewController, PhoneNumberViewDelegate {
    
    
    private var controller: PhoneNumberControllerDelegate?
    
    
    @IBOutlet weak var tfPhone: PhoneNumberTextField!
    @IBOutlet weak var butLogIn: UIButton!
    
    
    override func viewDidLoad() {
        configureView()
    }
    
    
    private func configureView() {
        self.controller = PhoneNumberController(view: self)
    }
    

    func activateButLogIn(activate: Bool) {
        butLogIn.alpha = activate ? 1 : 0.5
        butLogIn.isUserInteractionEnabled = activate
    }
    
    
    @IBAction func tfPhoneTextChanged(_ sender: PhoneNumberTextField) {
        controller?.tfPhoneTextChanged(to: sender.text!)
    }
    

    @IBAction func butWithoutAuthTapped(_ sender: UIButton) {
        controller?.butWithoutAuthTapped()
    }
    
    
    @IBAction func butLogInTapped(_ sender: UIButton) {
        controller?.butLogInTapped()
    }
    
}