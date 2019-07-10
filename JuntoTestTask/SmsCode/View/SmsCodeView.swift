//
//  SmsCodeView.swift
//  JuntoTestTask
//
//  Created by Ацамаз Бицоев on 10/07/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class SmsCodeView: UIViewController, SmsCodeViewDelegate {
    
    
    private var controller: SmsCodeControllerDelegate!
    
    
    @IBOutlet weak var viewDots: DotsView!
    @IBOutlet weak var tfCode: UITextField!
    @IBOutlet weak var butSendCode: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        controller.viewDidLoad()
    }
    
    
    private func configureView() {
        controller = SmsCodeController(view: self)
    }
    
    
    func goToUserDataView() {
        let storyboard = UIStoryboard(name: "UserData", bundle: nil)
        let userDataView = storyboard.instantiateViewController(withIdentifier: "UserDataView")
        self.navigationController?.show(userDataView,
                                        sender: nil)
    }
    
    func goToMainView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "MainNav")
        self.navigationController?.present(mainView,
                                           animated: true,
                                           completion: nil)
    }
    
    func setShowableCode(_ code: String) {
        viewDots.showableCode = code
    }
    
    func clearShowableCode() {
        tfCode.text = ""
        viewDots.showableCode = ""
    }
    
    func setRedCodeColor() {
        viewDots.color = .red
    }
    
    func showCodeSentAlert() {
        let alert = UIAlertController(title: "Отправлено",
                                      message: "Код \"11111\" отправлен на ваш номер телефона",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок",
                                     style: .default) { (alert) in
                                        self.controller.alertOkTapped()
        }
        alert.addAction(okAction)
        self.present(alert,
                     animated: true,
                     completion: nil)
    }
    
    func setTextToButSendCode(_ text: String ) {
        UIView.performWithoutAnimation {
            self.butSendCode.setTitle(text,
                                 for: .normal)
            self.butSendCode.layoutIfNeeded()
        }
    }
    
    func openKeyboard() {
        tfCode.becomeFirstResponder()
    }
    
    
    func activateButSendCode(_ activate: Bool) {
        
        butSendCode.alpha = activate ? 1 : 0.5
        butSendCode.isUserInteractionEnabled = activate
    }
    
    
    @IBAction func tfCodeTextChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        controller.tfCodeTextChanged(to: text)
    }
    
    @IBAction func butSendCodeTapped(_ sender: UIButton) {
        controller.butSendCodeTapped()
    }
    
}
