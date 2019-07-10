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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        controller.viewDidLoad()
    }
    
    
    private func configureView() {
        controller = SmsCodeController(view: self)
    }
    
    
    func goToUserDataView() {
        
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
    
    func openKeyboard() {
        tfCode.becomeFirstResponder()
    }
    
    
    @IBAction func tfCodeTextChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        controller.tfCodeTextChanged(to: text)
    }
    

}
