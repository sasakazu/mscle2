//
//  editAcountViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/27.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class editAcountViewController: UIViewController, UITextFieldDelegate {

 
    var ref: DatabaseReference!
    
    
    @IBOutlet weak var userNameEditTextField: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameEditTextField.delegate = self //デリゲートをセット
        
       
    }

    @IBAction func acountEditImage(_ sender: Any) {
    
    
    }
    
    
    @IBAction func acountButtonTapped(_ sender: Any) {
        
        ref = Database.database().reference()

        if userNameEditTextField.text != "" {
            
            ref?.child("users").child((Auth.auth().currentUser?.uid)!).setValue(["username": userNameEditTextField.text ])
            

        }
    }
    
 
  
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
