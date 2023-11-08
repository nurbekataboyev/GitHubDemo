//
//  LoginViewController.swift
//  InterfaceAdvanced006_HW
//
//  Created by Nurbek on 02/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        navBar()
        login()
        
    }

    // MARK: - Navigation
    func navBar() {
        navigationItem.title = "Login"
    }
    
//    MARK: - Login Page
    func login() {
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.backgroundColor = .systemBlue
        signInButton.tintColor = .white
        signInButton.layer.cornerRadius = 5
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.backgroundColor = .systemRed
        signUpButton.tintColor = .white
        signUpButton.layer.cornerRadius = 5
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
