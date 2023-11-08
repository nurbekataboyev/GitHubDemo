//
//  SignUpViewController.swift
//  InterfaceAdvanced006_HW
//
//  Created by Nurbek on 02/11/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        navBar()
        signUp()
        
    }
    
    // MARK: - Navigation
    
    func navBar() {
        navigationItem.title = "Sign Up"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backTapped))
    }
//    action
    @objc func backTapped() {
        navigationController?.popViewController(animated: true)
    }
    
//    MARK: - Sign Up Page
    func signUp() {
        fullNameTextField.placeholder = "Fullname"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        confirmPasswordTextField.placeholder = "Confirm Password"
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.tintColor = .white
        signUpButton.backgroundColor = .systemRed
        signUpButton.layer.cornerRadius = 5
        
    }
    
}
