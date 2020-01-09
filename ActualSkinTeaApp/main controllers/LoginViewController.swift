//
//  ViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 12/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: outlets and variables
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        handleTextField()
        
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
        
      //  let attributeString = passwordTextField.placeholder!
        
        
        //passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSForegroundColorAttributesName: UIColor(white: 1.0, alpha: 0.6)])
        let bottomLayerPassword = CALayer()
        bottomLayerPassword.frame = CGRect(x: 0, y: 29, width: 1000, height: 0.6)
        bottomLayerPassword.backgroundColor = UIColor(red: 20/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        //passwordTextField.layer.addSublayer(bottomLayerPassword)
        
    }
    
    func handleTextField() {
        emailTextField.addTarget(self, action: #selector(LoginViewController.textFieldDidChange), for: UIControl.Event.editingChanged)
         passwordTextField.addTarget(self, action: #selector(LoginViewController.textFieldDidChange), for: UIControl.Event.editingChanged)
         
    }
    
    @objc func textFieldDidChange() {
        guard let emailtext = emailTextField.text, !emailtext.isEmpty, let passwordText = passwordTextField.text else {
            signInButton.setTitleColor(UIColor.lightText, for: UIControl.State.normal)
            signInButton.isEnabled = false
            return
        }
        
        // if the information has text in it then the sign in button will work
        signInButton.setTitleColor(UIColor.green, for: UIControl.State.normal)
        signInButton.isEnabled = true
    }

    // MARK: action make results
    
    @IBAction func signupButton(_ sender: UIButton) {
       // prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
        
        
    }
    
}


extension LoginViewController: UITextFieldDelegate{
    
  //  text
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        // dismiss the keyboard
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        // need to get code that will store the information user enters
        
        return true
        
    }
    
    
    
}
