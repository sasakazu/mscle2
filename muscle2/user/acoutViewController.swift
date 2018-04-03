//
//  acoutViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class acoutViewController: UIViewController {

    
    @IBOutlet weak var mailLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = Auth.auth().currentUser
        
        mailLabel.text = user?.email
    }

    @IBAction func logoutTapped(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            
            print("sign out done")
            
        } catch let signOutError as NSError {
            
            print ("Error signing out: %@", signOutError)
        }
        
    
    }
    
 

}
