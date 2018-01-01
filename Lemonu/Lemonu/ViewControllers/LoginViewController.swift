//
//  Login.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/27/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func setLogIn()
}

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    weak var delegate : LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
    func configureUI() {
        self.usernameTxtField.drawBorderBottom()
        self.passwordTxtField.drawBorderBottom()
        self.loginButton.roundWithWhiteBorder()
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if self.delegate != nil {
            delegate?.setLogIn()
            self.dismiss(animated: true, completion: nil)
        } else {
            //unable to log in alert
        }
    }
}
