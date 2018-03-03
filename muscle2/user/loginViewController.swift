//
//  loginViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/22.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn


class loginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        guard let email = emailTextField.text else  { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) {
            
            
            (user, error) in
            if error != nil {
                print("サインインできませんでした")
            }
            if user != nil {
                self.dismiss(animated: true, completion: nil)
            } else {
                print("サインインできませんでした")
            }
        }
        
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    

    
    
    
}
