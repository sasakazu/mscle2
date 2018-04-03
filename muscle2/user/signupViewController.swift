//
//  signupViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/22.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class signupViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passConfirmationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    
    @IBAction func signupTapped(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("登録できませんでした")
            }
            if let user = user {
                print(user.email! as Any)
                self.dismiss(animated: true, completion: nil)
            } else {
                print("登録できませんですた")
            }
        }
    }
    

  
    
}



