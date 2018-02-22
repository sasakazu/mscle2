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


class loginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            
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
        
        print("login done")
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    

    
    
    
}
