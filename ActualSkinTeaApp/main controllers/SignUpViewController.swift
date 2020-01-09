//
//  SignUpViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 12/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK: outlets and variables
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        handleTextField()
        
        self.userNameTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        // the code to set the emailtextfield
        emailTextField.backgroundColor = UIColor.clear
        emailTextField.tintColor = UIColor.white
        emailTextField.textColor = UIColor.systemBlue
        //        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSForegroundColorAttributeName: UIColor(white: 1.0, alpha: 0.6)])
        
        // need to double check what this does
        let bottomLayerEmail = CALayer()
        bottomLayerEmail.frame = CGRect(x: 0, y: 29, width: 1000, height: 0.6)
        emailTextField.layer.addSublayer(bottomLayerEmail)
        
        passwordTextField.backgroundColor = UIColor.clear
        passwordTextField  .tintColor = UIColor.white
        passwordTextField.textColor = UIColor.systemBlue
        
        userNameTextField.backgroundColor = UIColor.clear
        userNameTextField.tintColor = UIColor.white
        userNameTextField.textColor = UIColor.systemBlue
    }
    
    
    @IBAction func dismissIfClicked(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func handleTextField() {
        emailTextField.addTarget(self, action: #selector(LoginViewController.textFieldDidChange), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(LoginViewController.textFieldDidChange), for: UIControl.Event.editingChanged)
        
    }
    
    @objc func textFieldDidChange() {
        guard let emailtext = emailTextField.text, !emailtext.isEmpty, let passwordText = passwordTextField.text else {
            signUpButton.setTitleColor(UIColor.lightText, for: UIControl.State.normal)
            signUpButton.isEnabled = false
            return
        }
        
        // if the information has text in it then the sign in button will work
        signUpButton.setTitleColor(UIColor.green, for: UIControl.State.normal)
        signUpButton.isEnabled = true
    }
    @IBAction func BackToLogin(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
}

extension SignUpViewController: UITextFieldDelegate{
    
    
}
