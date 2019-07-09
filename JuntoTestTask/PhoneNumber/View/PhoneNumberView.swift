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
        addTapRecognizer()
        tfPhone.delegate = self
    }
    
    
    private func configureView() {
        self.controller = PhoneNumberController(view: self)
    }
    

    func activateButLogIn(activate: Bool) {
        butLogIn.alpha = activate ? 1 : 0.5
        butLogIn.isUserInteractionEnabled = activate
    }
    
    
    private func addTapRecognizer() {
        let recognizer = UITapGestureRecognizer(target: self,
                                                action: #selector(viewTapped))
        self.view.addGestureRecognizer(recognizer)
    }
    
    @objc
    private func viewTapped() {
        self.view.endEditing(true)
    }
    
    
    func goToMainVC() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "Main")
        self.navigationController?.show(mainView,
                                        sender: nil)
    }
    
    
    @IBAction func tfPhoneTextChanged(_ sender: PhoneNumberTextField) {
        controller?.tfPhoneTextChanged(to: sender.text!)
    }
    

    @IBAction func butWithoutAuthTapped(_ sender: UIButton) {
        controller?.butWithoutAuthTapped()
    }
    
    
    @IBAction func butLogInTapped(_ sender: UIButton) {
        controller?.butLogInTapped(phoneNumber: tfPhone.text!)
    }
    
}
